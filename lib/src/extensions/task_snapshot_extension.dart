import 'package:firebase_storage/firebase_storage.dart';

extension TaskSnapshotExtension on TaskSnapshot {
  /// Download progress from `0.0` to `1.0`.
  double get progress => totalBytes < 0 ? 0 : (bytesTransferred / totalBytes);
}
