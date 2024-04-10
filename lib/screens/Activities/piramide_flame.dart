import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../area_played.dart';
import 'button_spriteIO.dart';
import 'button_spriteSlot.dart';

class PiramideFlame extends FlameGame {
  List<buttonSpriteSlot> numberSlot = [];
  List<buttonSpriteIO> numberBtns = [];
  
  late TextComponent contador;
  String numerosEscritos = '';
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


    final regex = RegExp(r'\d{3}');
    camera.viewfinder.anchor = Anchor.topLeft;
    add(PlayArea(pantalla));

    final buttonSize = Vector2(
        pantalla.width * 0.173, 
        pantalla.height * 0.1);
         // Tamaño de cada botón
    const spacing = 10; // Espaciado entre botones
   
    contador = TextComponent(
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

      numberBtns.add(buttonSpriteIO(
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
      world.add(numberBtns[i]);//numeros Inferiores
      //diselo de applicacion movil para desarrollar la logica computacional
    }

    double y = 0;
    double x = 0;
    int index = 0;
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


        numberSlot.add( buttonSpriteSlot(
          spriteNormal: normalSprite,
          spritePulsado: pressedSprite,
          onPressed: (){},
          position: Vector2(x, y),
          size: buttonSize,
          index: index+1,
        ));

        world.add(numberSlot[index]);
        index++;
      }
    }

    debugMode = false;
    init();
  }



  void init(){
    for(buttonSpriteSlot x in numberSlot) {
      x.onPressed=(){
      if (contador.text != '') {
        x.btSlotText.text = contador.text;
        numerosEscritos = '';
        contador.text = numerosEscritos;
        x.isSet = true;
      } else {
        //print(textoBoton.text);
      }
    };
    }
  }





}
