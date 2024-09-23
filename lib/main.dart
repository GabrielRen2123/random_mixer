import 'package:flutter/material.dart';
import 'package:random_mixer_app/menus/home_page.dart';

void main() {
  runApp(const RandomMixerApp());
}

class RandomMixerApp extends StatelessWidget {
  const RandomMixerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RandomMixer',
      home: HomePage()
    );
  }
}
