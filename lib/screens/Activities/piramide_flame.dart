import 'dart:async';
import 'package:aplicacion_final_1/screens/area_played.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'boton_sprite.dart';

class PiramideFlame extends FlameGame {
  final Size pantalla;
  PiramideFlame(this.pantalla)
      : super(
          camera: CameraComponent.withFixedResolution(
            width: pantalla.width,
            height: pantalla.height,
          ),
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    //definicion
    String numerosEscritos = '';
    final regex = RegExp(r'\d{3}');

    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea(pantalla));

    final buttonSize = Vector2(
        pantalla.width * 0.173, pantalla.height * 0.1); // Tamaño de cada botón
    const spacing = 10; // Espaciado entre botones

    TextComponent contador = TextComponent(
        text: numerosEscritos,
        position: Vector2(buttonSize.x + 100, buttonSize.y + 400),
        textRenderer: TextPaint(
            style: const TextStyle(fontSize: 40, color: Colors.black)));

    world.add(contador);

    for (int i = 0; i < 10; i++) {
      final row = (i) ~/ 5; // Calcula la fila
      final column = (i) % 5; // Calcula la columna

      final x = buttonSize.x * column +
          spacing * (column + (pantalla.width * 0.002)); // Posición X
      final y = buttonSize.y * row +
          spacing * (row + (pantalla.height * 0.07)); // Posición Y

      final normalSprite = await Sprite.load('numero $i.png');
      final pressedSprite = await Sprite.load('Pnumero $i.png');

      world.add(BotonSprite(
        spriteNormal: normalSprite,
        spritePulsado: pressedSprite,
        onPressed: () {
          if (regex.hasMatch(numerosEscritos) == false) {
            numerosEscritos = numerosEscritos + i.toString();
            contador.text = numerosEscritos;
            print(numerosEscritos);
          }
        },
        position: Vector2(x, y),
        size: buttonSize,
      ));

      //diselo de applicacion movil para desarrollar la logica computacional
    }

    double y = 0;
    double x = 0;
    for (int fila = 0; fila < 5; fila++) {
      y = 355 + ((buttonSize.y * fila) * -1); // Posición y
      for (int columna = 0; columna < 5 - fila; columna++) {
        x = ((buttonSize.x * columna) + 25) +
            (buttonSize.x / 2) * fila; // Posición X

        final normalSprite = await Sprite.load('color $fila.png');
        final pressedSprite = await Sprite.load('Pboton.png');

        world.add(SpriteComponent(
          sprite: await Sprite.load('fondo.png'),
          position: Vector2(x + 3, y - 4),
          size: Vector2(buttonSize.x, buttonSize.y),
        ));

        TextComponent textoBoton =
            TextComponent(text: '000', position: Vector2(x + 17, y + 27));

        world.add(BotonSprite(
          spriteNormal: normalSprite,
          spritePulsado: pressedSprite,
          onPressed: () {
            if (numerosEscritos != '') {
              textoBoton.text = contador.text;
              numerosEscritos = '';
              contador.text = numerosEscritos;
            } else {
              print(textoBoton.text);
            }
          },
          position: Vector2(x, y),
          size: buttonSize,
        ));

        world.add(textoBoton);
      }
    }

    debugMode = false;
  }
}
