import 'package:flutter/material.dart';
import 'package:random_mixer_app/menus/Menu_principal.dart';

void main() {
  runApp(RandomMixerApp());
}

class RandomMixerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RandomMixer',
      home: MenuPrincipal(),
    );
  }
}
