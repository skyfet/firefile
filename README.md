<!-- ## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package. -->

## Usage

```dart
Firefile(
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
```