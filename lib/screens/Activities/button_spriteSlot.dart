// ignore_for_file: camel_case_types
// La vida es bella

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/input.dart';
import 'package:flame/layout.dart';
import 'package:flutter/material.dart';

class buttonSpriteSlot extends SpriteButtonComponent {
  int index;
  int value=0;
  bool isSet=false;
 // Color colores = Colors.white;
 late TextComponent btSlotText;

  buttonSpriteSlot({
    required Sprite spriteNormal,
    required Sprite spritePulsado,
    required VoidCallback onPressed,
    required Vector2 position,
    required Vector2 size,
    required this.index,
  }) :super(
    button: spriteNormal,
    buttonDown: spritePulsado,
    onPressed: onPressed,
    position: position,
    size: size,
  ){
    add(
      AlignComponent(
        child: btSlotText=TextComponent(
          text: '000',
        anchor:Anchor.center,
        textRenderer: TextPaint(style: TextStyle(color: _getResultColor(index), fontSize: 25 ))),
        alignment: Anchor.center,
        keepChildAnchor: true,
        
      ),
    );
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

  }
  Color _getResultColor(index) {
    Color myColor;
    if(index==4 || index == 7|| index == 12|| index ==13){
       myColor = Colors.red;
    }else{
      myColor = Colors.white;
    }
    return myColor;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas); // Renderiza el botón primero

  }

}





