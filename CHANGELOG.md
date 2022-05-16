## 0.5.1

- FIX: Providing `FirefileTask.visibleName` using `FilefileController.uploadFile`.

## 0.5.0

- FEATURE: You can now provide an alternate file name using `FirefileTask.visibleName`.

## 0.4.0

- FEATURE: You can now get the full download url of the file after the task is successfully completed using `FirefileTask.downloadUrl`.

## 0.3.2

- BUGFIX: The placeholder was not initialized correctly.
- BUGFIX: The states were not updated correctly when the task was deleted.

## 0.3.1

- FEATURE: Now, you can now specify the widget to be used as a placeholder when the task list is empty, using the `placeholder` argument of the `Firefile` class.
- BUGFIX: In some another cases, the task was not removed again.

## 0.2.1

- BUGFIX: In some cases, the task was not removed when the cancelTask method was called, regardless of the removeOnCancel flag.

## 0.2.0

- `Web` support added.
- Removed unneccessary `platform` package dependency.
- Updating `example/` and documentation.

## 0.1.0

- Basic `firefile` features.
