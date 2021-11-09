import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/name_edit.dart';
import 'package:flutter_counter_shooter/ui/game/records/name/saved_name.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordsBloc, RecordsState>(
      builder: (BuildContext context, RecordsState recordsState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NameEdit(
              name: recordsState.name,
              onSubmitted: (String name) {
                if (name.isNotEmpty) {
                  context.read<RecordsBloc>().add(RecordsEvent.setName(name));
                }
              },
            ),
            const SizedBox(height: 8),
            SavedNames(
              names: recordsState.lastNames,
              onSelected: (String name) {
                context.read<RecordsBloc>().add(RecordsEvent.setName(name));
              },
            ),
          ],
        );
      },
    );
  }
}
