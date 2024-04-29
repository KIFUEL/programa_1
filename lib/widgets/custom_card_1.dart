
import 'package:aplicacion_final_1/screens/Activities/Rompe1/piramide_screen.dart';
import 'package:aplicacion_final_1/screens/Activities/Rompe2/multi_Screen.dart';
import 'package:aplicacion_final_1/screens/Activities/Rompe3/Rompe3_Screen.dart';
import 'package:aplicacion_final_1/screens/Activities/Rompe4/Rompe4_Screen.dart';
import 'package:aplicacion_final_1/screens/Activities/Rompe5/Rompe5_Screen.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  final String titulo;
  final String description;
  final String inicio;
  final String fin;
  final String tipo;
  final IconData? icono;

  const CustomCardType1({
    super.key,
    required this.titulo,
    required this.description,
    required this.inicio,
    required this.fin,
    required this.tipo,
    this.icono = Icons.error_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(
            icono,
            //color: AppTheme.secondary,
          ),
          title: Text(titulo),
          subtitle: Text(description),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Inicio  $inicio'),
              Text('Fin     $fin'),
            ],
          ),
          onTap: () => {
            if (tipo == 'piramide'){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PiramideScreen()))
              },
            if (tipo == 'Multiplicacion') {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MultiScreen()))
            },
            if (tipo == 'Rompe3') {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Rompe3Screen()))
            },
            if (tipo == 'Rompe4') {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Rompe4Screen()))
            },
            if (tipo == 'Rompe5') {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Rompe5Screen()))
                        },
          },
          onLongPress: () => {},
        ),
      ]),
    );
  }
}
