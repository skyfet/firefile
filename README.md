## Firefile
This package makes it easy to control the display of the Firestore file download progress.

## Getting started
Make sure that all Firebase requirements are installed. 

## Usage
1. Initialize `FirefileController`:
```dart
  controller = FirefileController();
```

2. Use `Firefile` in the widget tree, providing the required `controller` initialized above and `tileBuilder`: 
```dart
Firefile(
  controller: controller,
  tileBuilder: (task) {
    return ListTile(
      title: Text(task.fileName),
      trailing: _buildTrailing(task.state), // Full example in `example/` folder
    );
  },
),
```
3. It works! 🎉
