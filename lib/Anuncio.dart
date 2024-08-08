import 'package:flutter/material.dart';

class Anuncio extends StatefulWidget {
  final Alignment alignment_personalizado;
  const Anuncio({super.key, this.alignment_personalizado = Alignment.topCenter});

  @override
  State<Anuncio> createState() => _AnuncioState();
}


class _AnuncioState extends State<Anuncio> {
  
  @override
  Widget build(BuildContext context ) {
    return Container
    (
      alignment: widget.alignment_personalizado,
      child: Container
      (
        width: 320,
        height: 50,
        color: Color.fromARGB(255, 58, 49, 49),
      ),
    );
  }
}
