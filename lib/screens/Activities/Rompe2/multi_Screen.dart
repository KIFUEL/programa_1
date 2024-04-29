
import 'package:aplicacion_final_1/screens/Activities/Rompe2/multi_flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


class MultiScreen extends StatefulWidget {
  const MultiScreen({super.key});

  @override
  State<MultiScreen> createState() => _MultiScreenState();
}

class _MultiScreenState extends State<MultiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Multiplicacion'),),
      body: Center(
          child: GameWidget(game: MultiFlame(MediaQuery.of(context).size))
    ));
  }
}
