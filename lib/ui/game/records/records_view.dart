import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/theme/durations.dart';
import 'package:flutter_counter_shooter/ui/common/screen_title.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/name_input.dart';
import 'package:flutter_counter_shooter/ui/game/records/table/records_table_or_loader.dart';
import 'package:flutter_counter_shooter/ui/game/records/your_score.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class RecordsView extends StatelessWidget {
  const RecordsView({
    super.key,
    required this.onRestart,
  });

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ScreenTitle(
            text: context.l10n.recordsTable,
          ),
          const SizedBox(height: 16),
          const YourScore(),
          const SizedBox(height: 16),
          RestartGame(onRestart: onRestart),
          const SizedBox(height: 16),
          const _NameInputOrNothing(),
          const SizedBox(height: 8),
          const Expanded(
            child: RecordsTableOrLoader(),
          ),
        ],
      );
}

class RestartGame extends StatelessWidget {
  const RestartGame({
    super.key,
    required this.onRestart,
  });

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onRestart,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(context.l10n.restart),
        ),
      );
}

class _NameInputOrNothing extends StatelessWidget {
  const _NameInputOrNothing({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<RecordsBloc, RecordsState>(
        bloc: di<RecordsBloc>(),
        buildWhen: (RecordsState previous, RecordsState current) =>
            current.showNameInput != previous.showNameInput,
        builder: (_, RecordsState recordsState) => AnimatedCrossFade(
          duration: kXlDuration,
          crossFadeState: recordsState.showNameInput
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: const NameInput(),
          secondChild: const SizedBox.shrink(),
        ),
      );
}
