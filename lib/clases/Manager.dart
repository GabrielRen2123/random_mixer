import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/nameList.dart';
import 'package:random_mixer_app/clases/text_form.dart';


class NameManager extends StatefulWidget {
  const NameManager({super.key});

  @override
  _NameManagerState createState() => _NameManagerState();
}

class _NameManagerState extends State<NameManager> {
  List<String> names = [];

  // Función para agregar nombre a la lista
  void addName(String name) {
    setState(() {
      names.add(name);
    });
  }

  // Función para eliminar nombre de la lista
  void removeName(String name) {
    setState(() {
      names.remove(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextForm(addName: addName), // Paso la función para agregar nombres
          const SizedBox(height: 20),
          const Text(
            "Members",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 10),
          NameList(names: names, removeName: removeName), // Paso la lista y la función para eliminar
        ],
      ),
    );
  }
}