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
    return Row(
      children: <Widget>[
        SizedBox(
          width: 70,
          child: Text('#${recordData.position}'),
        ),
        Expanded(
          child: Text(
            recordData.name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 16),
        Text('${recordData.score}'),
      ],
    );
  }
}
