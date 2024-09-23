import 'package:flutter/material.dart';

class menu_crear_grupos extends StatelessWidget {
  const menu_crear_grupos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Grupo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Nombre del grupo',
              ),
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              items: ['Categoría 1', 'Categoría 2', 'Categoría 3']
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: (value) {
                // Handle category selection
              },
              decoration: const InputDecoration(
                hintText: 'Selecciona una categoría',
              ),
            ),
            const SizedBox(height: 16.0),
            const Expanded(
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Miembros (uno por línea)',
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle save button click
              },
              child: const Text('GUARDAR'),
            ),
          ],
        ),
      ),
    );
  }
}