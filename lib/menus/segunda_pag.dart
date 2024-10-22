import 'package:flutter/material.dart';
import 'package:random_mixer_app/clases/estructura_basica.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/Manager.dart';


class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Anuncios(),
          ),
        ),
      body: const EstructuraBasica(widgetList: [NameManager()]),
      bottomNavigationBar:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Anuncios(),
          ],
        ),
    );
  }
}
