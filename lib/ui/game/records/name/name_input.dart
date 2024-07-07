import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/name_edit.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/saved_name.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class NameInput extends StatefulWidget {
  const NameInput({
    super.key,
  });

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  String _currentName = '';

  @override
  Widget build(BuildContext context) => BlocBuilder<RecordsBloc, RecordsState>(
        bloc: di<RecordsBloc>(),
        builder: (BuildContext context, RecordsState recordsState) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: NameEdit(
                    name: recordsState.name,
                    onSubmitted: (String name) {
                      if (name.isNotEmpty) {
                        di<RecordsBloc>().add(RecordsEvent.setName(name));
                      }
                    },
                    onChanged: (String name) => _currentName = name,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(context.l10n.submit),
                    ),
                    onPressed: () {
                      if (_currentName.isNotEmpty) {
                        di<RecordsBloc>()
                            .add(RecordsEvent.setName(_currentName));
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SavedNames(
              names: recordsState.lastNames,
              onSelected: (String name) {
                di<RecordsBloc>().add(RecordsEvent.setName(name));
              },
            ),
          ],
        ),
      );
}
