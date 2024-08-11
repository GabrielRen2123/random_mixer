import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_mixer_app/clases/Anuncios.dart';
import 'package:random_mixer_app/clases/Botons.dart';

class  Menu_principal extends StatelessWidget {
  const Menu_principal ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center//center para alinear
          (
            child:  
              Anuncios(),
          )
        ),
    body: Center(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            shrinkWrap: true,
            children: <Widget>[
              Center( //titulo de la pagina
                child: Title(
                  color: Colors.black,
                  child: Text("Welcome 'User'"),
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y el botón
              CustomButton(title: "Press", onPressed: miFuncion, ),// Llamar a la función del botón
              SizedBox(height: 20), // Espacio entre los botones
              CustomButton(title: "Otro Boton",onPressed: () {
                  // Otra acción del botón
                },
              ),
            ],
          ),  
        ),
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.center, //centrarlo
          children: 
          [
            Anuncios(),
          ],
        ),
      ),
    );
  }
}

void miFuncion()
{
  print("object");
}