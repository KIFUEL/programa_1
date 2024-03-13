import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'piramide_flame.dart';

class PiramideScreen extends StatefulWidget {
  const PiramideScreen({super.key});

  @override
  State<PiramideScreen> createState() => _PiramideScreenState();
}

class _PiramideScreenState extends State<PiramideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piramide'),
      ),
      body: Center(
          child: GameWidget(game: PiramideFlame(MediaQuery.of(context).size))),
    );
  }
}
