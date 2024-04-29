
import 'package:aplicacion_final_1/screens/Activities/Rompe2/multi_flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


class Rompe5Screen extends StatefulWidget {
  const Rompe5Screen({super.key});

  @override
  State<Rompe5Screen> createState() => _Rompe5ScreenState();
}

class _Rompe5ScreenState extends State<Rompe5Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Rompe5'),),
      body: Center(
          child: GameWidget(game: MultiFlame(MediaQuery.of(context).size))
    ));
  }
}
