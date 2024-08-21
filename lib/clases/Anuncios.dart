import 'package:flutter/material.dart';

class Anuncios extends StatelessWidget {
  const Anuncios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
      (
        height: 50,
        //width: 320,
        color: Colors.grey[800],
        padding: EdgeInsets.all(10.0),
        child: Center
        (
          child: Text
          (
            'Anuncio 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}
