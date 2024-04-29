import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class BotonSprite extends SpriteButtonComponent {
  BotonSprite({
    required Sprite spriteNormal,
    required Sprite spritePulsado,
    required VoidCallback onPressed,
    required Vector2 position,
    required Vector2 size,
  }) : super(
          button: spriteNormal,
          buttonDown: spritePulsado,
          onPressed: onPressed,
          position: position,
          size: size,
        );
}
