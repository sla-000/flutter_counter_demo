import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';

class OneRecord extends StatelessWidget {
  const OneRecord({
    Key? key,
    required this.recordData,
  }) : super(key: key);

  final RecordData recordData;

  @override
  Widget build(BuildContext context) {
    return Text('#${recordData.position} ${recordData.name} ${recordData.score}');
  }
}
