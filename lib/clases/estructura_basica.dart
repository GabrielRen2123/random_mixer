import 'package:flutter/material.dart';

class EstructuraBasica extends StatelessWidget {
  final List<Widget> widgetList;

  const EstructuraBasica({super.key, required this.widgetList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Color de fondo claro
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16), // Margen alrededor del contenedor
            padding: const EdgeInsets.all(16), // Espacio interno
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true, // Ajusta la lista al contenido mínimo necesario
              physics: const BouncingScrollPhysics(), // Efecto rebote al hacer scroll
              itemCount: widgetList.length,
              itemBuilder: (context, index) {
                return widgetList[index]; // Retorna cada widget de la lista
              },
            ),
          ),
        ),
      ),
    );
  }
}
