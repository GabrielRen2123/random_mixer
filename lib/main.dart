import 'package:flutter/material.dart';
import 'package:random_mixer_app/MyGroups/MyGroups.dart';

void main() {
  runApp(const RandomMixerApp());
}

class RandomMixerApp extends StatelessWidget {
  const RandomMixerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RandomMixer',
        home: MyGroups());
  }
}
