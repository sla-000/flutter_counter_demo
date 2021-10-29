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
          child: Text(
            '#${recordData.position}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Expanded(
          child: Text(
            recordData.name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          '${recordData.score}',
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
