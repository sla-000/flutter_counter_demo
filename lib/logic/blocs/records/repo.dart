import 'dart:async';

abstract class DbRepo {
  FutureOr<Map<String, int>> getRecords();
  FutureOr<void> addRecord({String name, int record});
}
