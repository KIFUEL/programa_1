import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplicacion_final_1/screens/area_played.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MultiFlame extends FlameGame{
        final Size pantalla;
        late TextComponent multiplicacion;
        MultiFlame(this.pantalla)
        :super(camera: CameraComponent.withFixedResolution(
          width: pantalla.width, 
          height: pantalla.height))
          ;


          @override
          FutureOr<void> onLoad() async {
            super.onLoad();

            camera.viewfinder.anchor = Anchor.topLeft;
            world.add(PlayArea(pantalla));

            multiplicacion = TextComponent(
              text:'1234\n*234 \n------ \n4234\nfsdfsf',
              position: Vector2((pantalla.width/2) - 50,50),
              textRenderer: TextPaint(
            style: GoogleFonts.robotoMono(fontSize: 40, color: Colors.black  ))
            );

            world.add(multiplicacion);


          }}