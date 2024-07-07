import 'package:flutter/material.dart';

class NameEdit extends StatefulWidget {
  const NameEdit({
    super.key,
    required this.name,
    this.onSubmitted,
    this.onChanged,
  });

  final String name;
  final void Function(String name)? onSubmitted;
  final void Function(String)? onChanged;

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
  Widget build(BuildContext context) => TextField(
        controller: _nameController,
        decoration: const InputDecoration(
          hintText: 'Nobody',
          labelText: 'Player name',
        ),
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
      );
}
