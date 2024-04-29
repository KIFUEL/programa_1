import 'dart:async';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import 'Activities/Rompe1/piramide_flame.dart';

class PlayArea extends RectangleComponent with HasGameReference<PiramideFlame> {
  final Size pantalla;
  PlayArea(this.pantalla)
      : super(
          paint: Paint()..color = const Color(0xfffeee9e9),
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(pantalla.width, pantalla.height);
  }
}
