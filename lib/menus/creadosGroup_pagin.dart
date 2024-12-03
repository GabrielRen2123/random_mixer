import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/Botons.dart';
import 'package:random_mixer_app/clases/estructura_basica.dart';

class creadosGroup extends StatelessWidget {
  final List<String> names = [
    'Alejandro',
    'Gabriel',
  ];

  creadosGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Students Faith'),
          backgroundColor: Colors.green, // color del encabezado
        ),
        body: EstructuraBasica(widgetList: [
          Manager(names),
        ]));
  }
}

Container Lista_del_Grupo(List<String> names) {
  return Container(
    margin: const EdgeInsets.all(2),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(10),
    ),
    child: SizedBox(
      height: 200, // Limitar la altura máxima
      width: 270, // Puedes ajustar el ancho si es necesario
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: names.map((name) {
            return Chip(
              label: Text(name),
            );
          }).toList(),
        ),
      ),
    ),
  );
}

Wrap Manager(List<String> names) {
  return Wrap(children: [Lista_del_Grupo(names), CustomButton(customText: "Random Member", fontFamily: "Poppins",font_Size: 15,width: 250,height: 70,onPressed: () {},//Aqui se coloca lo que quiere que haga el boton
  boton_color: const Color(0xFF3784EE), text_color: Colors.black, box_shadow_color: Colors.green,)],);
}
