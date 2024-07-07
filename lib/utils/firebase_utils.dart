import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp? timestampFromJson(dynamic date) {
  if (date is! Timestamp) {
    throw FormatException('Date is not Timestamp, '
        'runtimeType=${date.runtimeType}, date=$date');
  }
  return date;
}

dynamic timestampToJson(Timestamp? timestamp) => timestamp;

Timestamp? timestampFromDateTime(DateTime? dateTime) =>
    dateTime == null ? null : Timestamp.fromDate(dateTime);
