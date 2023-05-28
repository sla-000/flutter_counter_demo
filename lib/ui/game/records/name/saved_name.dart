import 'package:flutter/material.dart';

class SavedNames extends StatelessWidget {
  const SavedNames({
    super.key,
    required this.names,
    required this.onSelected,
  });

  final List<String> names;
  final void Function(String name)? onSelected;

  @override
  Widget build(BuildContext context) => Material(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: _namesList(),
        ),
      );

  List<Widget> _namesList() => names
      .map(
        (String name) => NameChip(
          key: Key(name),
          name: name,
          onTap: onSelected == null ? null : () => onSelected!(name),
        ),
      )
      .toList();
}

class NameChip extends StatelessWidget {
  const NameChip({
    super.key,
    required this.name,
    this.onTap,
  });

  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        child: ElevatedButton(
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(name),
          ),
        ),
      );
}
