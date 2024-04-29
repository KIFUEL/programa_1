
import 'package:aplicacion_final_1/screens/Activities/Rompe2/multi_flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


class Rompe4Screen extends StatefulWidget {
  const Rompe4Screen({super.key});

  @override
  State<Rompe4Screen> createState() => _Rompe4ScreenState();
}

class _Rompe4ScreenState extends State<Rompe4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Rompe4'),),
      body: Center(
          child: GameWidget(game: MultiFlame(MediaQuery.of(context).size))
    ));
  }
}
