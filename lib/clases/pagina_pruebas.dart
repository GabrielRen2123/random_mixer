import 'package:flutter/material.dart';

class CircleSelector extends StatefulWidget {
  const CircleSelector({super.key});

  @override
  _CircleSelectorState createState() => _CircleSelectorState();
}

class _CircleSelectorState extends State<CircleSelector> {
  String? _selectedOption; // Variable para almacenar la opción seleccionada

  // Lista de opciones que queremos mostrar
  final List<String> options = ['Person', 'Object', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select an option:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Wrap( // Usamos Wrap para que los círculos se ajusten automáticamente
          spacing: 16.0, // Espacio horizontal entre opciones
          runSpacing: 10.0, // Espacio vertical entre opciones si se envuelven
          children: options.map((option) {
            return _buildOption(option);
          }).toList(),
        ),
      ],
    );
  }

  // Widget para construir cada opción con un círculo y un texto al lado
  Widget _buildOption(String option) {
    final bool isSelected = _selectedOption == option; // Verificar si la opción está seleccionada

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = option; // Actualizar la opción seleccionada
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min, // Hace que el Row ocupe solo el espacio necesario
        children: [
          // Círculo
          Container(
            width: 24, // Tamaño del círculo
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.blue : Colors.grey.shade300, // Cambia de color si está seleccionado
              border: Border.all(
                color: Colors.blue,
                width: isSelected ? 3 : 1, // Grosor del borde
              ),
            ),
          ),
          const SizedBox(width: 8), // Espacio entre el círculo y el texto
          // Texto
          Text(
            option,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.blue : Colors.black, // Cambia de color si está seleccionado
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
