import 'package:flutter/material.dart';

class RecordsTable extends StatelessWidget {
  const RecordsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('#1 name score'),
        Text('#2 name score'),
        Text('#3 name score'),
        Text('#4 name score'),
        Text('#5 name score'),
      ],
    );
  }
}
