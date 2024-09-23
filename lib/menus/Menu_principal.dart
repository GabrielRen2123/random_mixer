import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/Botons.dart';
import 'package:random_mixer_app/menus/menu_crear_grupos.dart';
import 'package:random_mixer_app/menus/menu_mi_grupos.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Anuncio 1 como nav bar
          const Anuncios(),
          // Botones de menú y configuración
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    // Acción del menú
                  },
                ),
                const Text('RandomMixer',
                    style: TextStyle(color: Colors.black, fontSize: 18.0)),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.black),
                  onPressed: () {
                    // Acción de configuración
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(''),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'welcome  -user-',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    CustomButton(
                        titel: "mi Grupos",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuMiGrupos()));
                        },
                        icons: Icons.group),
                    const SizedBox(height: 10.0),
      CustomButton(
                      titel: "mi Grupos",
                      onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => menu_crear_grupos()));
                        }, icons: Icons.add)
                  ],
                ),
              ),
            ),
          ),
          // Anuncio 2 en la parte inferior
          Container(
            color: Colors.grey[800],
            padding: const EdgeInsets.all(10.0),
            child: const Center(
              child: Text(
                'Anuncio 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción para el FAB
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
