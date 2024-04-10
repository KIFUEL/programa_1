// ignore: file_names
import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class buttonSpriteIO extends SpriteButtonComponent {
  buttonSpriteIO({
    required Sprite spriteNormal,
    required Sprite spritePulsado,
    required VoidCallback onPressed,
    required Vector2 position,
    required Vector2 size,
  }) :super(
    button: spriteNormal,
    buttonDown: spritePulsado,
    onPressed: onPressed,
    position: position,
    size: size,
  );
      // @override
      // Future<void> onLoad() async {
      //   await super.onLoad();
      //   // Código que se ejecutará cuando el botón se cargue
      //   print('Botón cargado');
      // }
      //
  // BotonSprite({
  //   required Sprite spriteNormal,
  //   required Sprite spritePulsado,
  //   required VoidCallback onPressed,
  //   required Vector2 position,
  //   required Vector2 size,
  // }) : super(
  //   button: spriteNormal,
  //   buttonDown: spritePulsado,
  //   onPressed: onPressed,
  //   position: position,
  //   size: size,
  // );

}

