
import 'package:aplicacion_final_1/screens/Activities/Rompe2/multi_flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


class Rompe3Screen extends StatefulWidget {
  const Rompe3Screen({super.key});

  @override
  State<Rompe3Screen> createState() => _Rompe3ScreenState();
}

class _Rompe3ScreenState extends State<Rompe3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Rompe3'),),
      body: Center(
          child: GameWidget(game: MultiFlame(MediaQuery.of(context).size))
    ));
  }
}
