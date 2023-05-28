import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/repo.dart';

class OneRecord extends StatelessWidget {
  const OneRecord({
    super.key,
    required this.recordData,
  });

  final RecordData recordData;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          SizedBox(
            width: 70,
            child: Text(
              '#${recordData.position}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Expanded(
            child: Text(
              recordData.name,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '${recordData.score}',
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      );
}
