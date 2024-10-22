import 'package:flutter/material.dart';

class NameList extends StatelessWidget {
  final List<String> names;
  final Function(String) removeName;

  const NameList({super.key, required this.names, required this.removeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100, minWidth: 300,
          maxHeight: 300, // Limitar el alto máximo para que tenga scroll
        ),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: names.map((name) {
              return Chip(
                label: Text(name),
                deleteIcon: const Icon(Icons.close),
                onDeleted: () {
                  removeName(name); // Llamamos a la función removeName
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
