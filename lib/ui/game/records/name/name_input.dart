import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/records/state.dart';
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

class NameEdit extends StatefulWidget {
  const NameEdit({
    Key? key,
    required this.name,
    this.onSubmitted,
  }) : super(key: key);

  final String name;
  final void Function(String name)? onSubmitted;

  @override
  State<NameEdit> createState() => _NameEditState();
}

class _NameEditState extends State<NameEdit> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.name;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _nameController,
      decoration: const InputDecoration(
        hintText: 'Nobody',
        labelText: 'Player name',
      ),
      onSubmitted: widget.onSubmitted,
    );
  }
}
