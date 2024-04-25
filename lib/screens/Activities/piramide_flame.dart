import 'dart:async';
import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../area_played.dart';
import 'button_spriteIO.dart';
import 'button_spriteSlot.dart';

class PiramideFlame extends FlameGame {
  List<buttonSpriteSlot> numberSlot = [];
  List<buttonSpriteIO> numberBtns = [];
      final regex = RegExp(r'\d{4}');
    final isLetras = RegExp(r'[/]');
     final listaNumeros = List<int>.filled(15, 000);
  
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



    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea(pantalla));

    final buttonSize = Vector2(
        pantalla.width * 0.173, 
        pantalla.height * 0.1);
         // Tamaño de cada botón
    const spacing = 10; // Espaciado entre botones
   
    contador = TextComponent(
        text: numerosEscritos,
        position: Vector2(buttonSize.x + 49, buttonSize.y + 410),
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
          if (isLetras.hasMatch(numerosEscritos) == false){
              if (regex.hasMatch(numerosEscritos) == false) {

            numerosEscritos = numerosEscritos + i.toString();
            contador.text = numerosEscritos;
            print(numerosEscritos);
          }
          }else{
            numerosEscritos = '';
            contador.text = numerosEscritos;
            init();
          }
        
        },
        position: Vector2(x, y + 30),
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
          position: Vector2(x + 3, y + 26),
          size: Vector2(buttonSize.x, buttonSize.y),
        ));


        numberSlot.add( buttonSpriteSlot(
          spriteNormal: normalSprite,
          spritePulsado: pressedSprite,
          onPressed: (){},
          position: Vector2(x, y + 30),
          size: buttonSize,
          index: index+1,
        ));

        

        world.add(numberSlot[index]);
        index++;


        
      }
    }


    debugMode = false;
    final normalSprite = await Sprite.load('color 4.png');
    final pressedSprite = await Sprite.load('Pboton.png');
     numberSlot.add(buttonSpriteSlot(
          spriteNormal: normalSprite,
          spritePulsado: pressedSprite,
          onPressed: (){},
          position: Vector2(104 + ((buttonSize.y) * -1),470),
          size: buttonSize,
          index: index+1,
        ));

         numberSlot.add(buttonSpriteSlot(
          spriteNormal: normalSprite,
          spritePulsado: pressedSprite,
          onPressed: (){},
          position: Vector2(320,470),
          size: buttonSize,
          index: index+1,
        ));

         world.add(numberSlot[15]);
         world.add(numberSlot[16]);

          numberSlot[15].onPressed = (){

        if (isLetras.hasMatch(numerosEscritos) == false){
           for(var i = 0; i < 15; i++){
            listaNumeros[i] = int.parse(numberSlot[i].btSlotText.text);
        }

        int j = 5;
        int resp_Corr = 0;
        int resp_Erro = 0;
        for(var i = 0; i < 13 ; i++){

          if (i == 4 || i == 8 || i == 11  ) {
            j = j - 1;
            i = i + 1;
          }

          if(listaNumeros[i] + listaNumeros[i+1] == listaNumeros[i+j]  ){
            resp_Corr = resp_Corr + 1; 
            
          }else{
            resp_Erro = resp_Erro + 1;
          }
          
        }
        print(listaNumeros);


        if (resp_Corr == 0 ){
           numerosEscritos = '🤮 $resp_Corr/10';

        }else if(resp_Corr == 1){
           numerosEscritos = '😤 $resp_Corr/10';
        }else if(resp_Corr > 2){
           numerosEscritos = '😭 $resp_Corr/10';

        }else if(resp_Corr > 5){
           numerosEscritos = '😒 $resp_Corr/10';

        }else if(resp_Corr == 6 ){
           numerosEscritos = '😪 $resp_Corr/10';

        }else if(resp_Corr > 7){ 
           numerosEscritos = '😑 $resp_Corr/10';

        }else if(resp_Corr == 9){
           numerosEscritos = '🫡 $resp_Corr/10';
 
        }else if(resp_Corr == 10){
           numerosEscritos = '🥳 $resp_Corr/10';

        }
        
        contador.text = numerosEscritos;
        numberSlot[15].btSlotText.text = "🔝";

        }else{
          
         numerosEscritos = '';
         contador.text = numerosEscritos;
         init(); 
        }

       
       };
    init();
  }



  void init(){

    print("Generacion de numeros aleatorios");

       
   
    for(var i = 0; i < 5; i++){
      listaNumeros[i] = Random().nextInt(400 - 1 + 1) + 1; 
      //getResultColor(listaNumeros[i]);
    }

    numberSlot[3].isSet = true;
    numberSlot[6].isSet = true;
    numberSlot[11].isSet = true;
    numberSlot[12].isSet = true;

      for(var i = 0, j = 5; i < 13 ; i++){

        if (i == 4 || i == 8 || i == 11  ) {
          j = j - 1;
          i = i + 1;
        }

        listaNumeros[i+j] = listaNumeros[i] + listaNumeros[i+1];
      }


      numberSlot[15].btSlotText.text = "✔";
      numberSlot[16].btSlotText.text = "🔙";
      numberSlot[16].onPressed = (){

        if (numerosEscritos.isNotEmpty ){
        
        numerosEscritos = numerosEscritos.substring(0,numerosEscritos.length - 1);
        contador.text = numerosEscritos;
        print(numerosEscritos);
        }

        
      };
      

    for(var i = 0; i < 15; i++) {

      if(numberSlot[i].isSet == true){
          numberSlot[i].btSlotText.text = listaNumeros[i].toString();
      }else{
       numberSlot[i].btSlotText.text = '000'; 
      }

      numberSlot[i].onPressed=(){
        if(isLetras.hasMatch(numerosEscritos) == false){

          if (numberSlot[i].isSet != true){
             if(contador.text.isNotEmpty){
                numberSlot[i].btSlotText.text = contador.text;
                numerosEscritos = '';
                contador.text = numerosEscritos;
              }

        }

        }else{
          numerosEscritos = '';
          contador.text = numerosEscritos;
        }

        
        
     


    };
    }
  }





}
