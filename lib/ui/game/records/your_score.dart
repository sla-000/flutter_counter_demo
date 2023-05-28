import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class YourScore extends StatelessWidget {
  const YourScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<RecordsBloc, RecordsState>(
        bloc: di<RecordsBloc>(),
        builder: (BuildContext context, RecordsState recordsState) => Text(
          '${context.l10n.yourScore} ${recordsState.lastRecord}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      );
}
