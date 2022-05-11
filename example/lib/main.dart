import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firefile/firefile.dart';
import 'package:flutter/material.dart';

void main() {
  const options = FirebaseOptions(
    apiKey: '<PROVIDE>',
    appId: '<THIS>',
    messagingSenderId: '<IF-YOU-WANT>',
    projectId: '<TO-TEST>',
  );

  Firebase.initializeApp(options: options);

  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firefile Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
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
                icon: const Icon(Icons.folder),
                label: const Text('Choose file'),
              ),
              Expanded(
                child: Firefile(
                  controller: controller,
                  tileBuilder: (task) => ListTile(
                    title: Text(task.fileName),
                    trailing: _buildTrailing(task),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget? _buildTrailing(FirefileTask task) {
    switch (task.state) {
      case TaskState.running:
        return IconButton(
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

      case TaskState.success:
        return const Text('Success 🎉');

      default:
        return null;
    }
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
