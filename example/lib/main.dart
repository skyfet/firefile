import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firefile/src/firefile.dart';
import 'package:flutter/material.dart';

void main() {
  const options = FirebaseOptions(
    apiKey: '<PROVIDE>',
    appId: '<THIS>',
    messagingSenderId: '<IF-YOU-WANT>',
    projectId: '<TO-TEST>',
  );

  Firebase.initializeApp(options: options);

  runApp(const FirefileExampleApp());
}

class FirefileExampleApp extends StatelessWidget {
  const FirefileExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firefile Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const FirefileExample(),
    );
  }
}

class FirefileExample extends StatefulWidget {
  const FirefileExample({Key? key}) : super(key: key);

  @override
  State<FirefileExample> createState() => _FirefileExampleState();
}

class _FirefileExampleState extends State<FirefileExample> {
  late FirefileController controller;

  @override
  void initState() {
    controller = FirefileController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firefile example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: _onPickFile,
                icon: const Icon(Icons.file_download),
                label: const Text('Choose file'),
              ),
              Expanded(
                child: Firefile(
                  controller: controller,
                  tileBuilder: (task) {
                    Widget? trailing;
                    switch (task.state) {
                      case TaskState.running:
                        if (task.progress > 0) {
                          trailing = IconButton(
                            onPressed: () => controller.cancelTask(task, removeOnCancel: true),
                            icon: Stack(
                              fit: StackFit.passthrough,
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: task.progress,
                                  color: Colors.red,
                                ),
                                Text('${(task.progress * 100).round()}%'),
                              ],
                            ),
                          );
                        } else {
                          trailing = const CircularProgressIndicator();
                        }
                        break;
                      case TaskState.success:
                        trailing = const Text('Success 🎉');
                        break;
                      default:
                        break;
                    }

                    return ListTile(
                      title: Text(task.fileName),
                      trailing: trailing,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      for (var file in result.files) {
        var name = file.name;
        final parts = name.split('.');
        name = '${parts.first}-'
            '${Random().nextInt(32).toString()}.'
            '${parts.last}';

        controller.uploadFile(
          data: file.bytes,
          childPath: name,
        );
      }
    } else {
      // User canceled the picker
    }
  }
}
