import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Rompe4Flame extends FlameGame{
        final Size pantalla;
        Rompe4Flame(this.pantalla)
        :super(camera: CameraComponent.withFixedResolution(
          width: pantalla.width, 
          height: pantalla.height))
          ;
}