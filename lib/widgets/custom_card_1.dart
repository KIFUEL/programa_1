import 'package:aplicacion_final_1/screens/Activities/piramide_screen.dart';
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
            if (tipo == 'piramide')
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PiramideScreen()))
              },
            if (tipo == 'perros') {print(tipo)},
            if (tipo == 'hexagonos') {print(tipo)},
          },
          onLongPress: () => {},
        ),
      ]),
    );
  }
}
