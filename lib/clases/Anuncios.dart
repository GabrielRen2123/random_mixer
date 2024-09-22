import 'package:flutter/material.dart';

class Anuncios extends StatelessWidget {
  const Anuncios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 320, height: 50,
          padding: const EdgeInsets.all(20),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF8C8484),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  'Anuncio 1\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Aclonica',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
);
  }}