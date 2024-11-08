import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/categorias.dart';
import 'package:random_mixer_app/clases/estructura_basica.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/nameList.dart';
import 'package:random_mixer_app/clases/text_form.dart';

class SegundaPag extends StatefulWidget {
  const SegundaPag({super.key});

  @override
  _SegundaPagState createState() => _SegundaPagState();
}

class _SegundaPagState extends State<SegundaPag> {
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

  Padding ManagerList() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextForm(addName: addName), // Paso la función para agregar nombres
          
          const CategorySelector(),

          const SizedBox(height: 5),
          const Text(
            "Members",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          
          const SizedBox(height: 10),
          NameList(
              names: names,
              removeName:
                  removeName), // Paso la lista y la función para eliminar
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Anuncios(),
          ),
        ),
      body: EstructuraBasica(widgetList: [ManagerList()]),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Anuncios(),
        ],
      ),
    );
  }
}
