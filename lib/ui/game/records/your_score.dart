import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';

class YourScore extends StatelessWidget {
  const YourScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordsBloc, RecordsState>(
      builder: (_, RecordsState recordsState) {
        return Text(
          'Your score: ${recordsState.lastRecord}',
          style: Theme.of(context).textTheme.headline5,
        );
      },
    );
  }
}
