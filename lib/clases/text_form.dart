import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final Function(String) addName;

  const TextForm({super.key, required this.addName});

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Ingrese un nombre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              widget.addName(_controller.text); // Llamamos a la función addName
              _controller.clear(); // Limpiamos el campo de texto
            }
          },
        ),
      ),
    );
  }
}