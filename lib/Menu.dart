import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import "package:randomixer/Anuncio.dart";

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo del Material",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container //botton La flecha de devolverse
                  (
                height: 25,
                width: 25,
                child: SvgPicture.asset('assets/icons/Arrow-left.svg'),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
                Container( //botton configuracion
                width: 25,
                height: 25,
                child: SvgPicture.asset('assets/icons/settings_icon.svg'),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            
            ],
          ),
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Anuncio(
            alignment_personalizado: Alignment.topCenter,
          ), //Se llama a la clase anuncios
        ]),
        bottomNavigationBar: Container(
          height: 50,
          width: 320,
          color: Colors.black12,
        ),
      ),
    );
  }
}
