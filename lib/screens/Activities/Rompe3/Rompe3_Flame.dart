import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Rompe3Flame extends FlameGame{
        final Size pantalla;
        Rompe3Flame(this.pantalla)
        :super(camera: CameraComponent.withFixedResolution(
          width: pantalla.width, 
          height: pantalla.height))
          ;
}