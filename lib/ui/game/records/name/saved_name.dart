import 'package:flutter/material.dart';

class SavedNames extends StatelessWidget {
  const SavedNames({
    Key? key,
    required this.names,
    required this.onSelected,
  }) : super(key: key);

  final List<String> names;
  final void Function(String name)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: _namesList(),
      ),
    );
  }

  List<Widget> _namesList() => names
      .map((String name) => NameChip(
            key: Key(name),
            name: name,
            onTap: onSelected == null ? null : () => onSelected!(name),
          ))
      .toList();
}

class NameChip extends StatelessWidget {
  const NameChip({
    Key? key,
    required this.name,
    this.onTap,
  }) : super(key: key);

  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
        onPressed: onTap,
      ),
    );
  }
}
