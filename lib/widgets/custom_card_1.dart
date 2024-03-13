import 'package:flutter/material.dart';
import 'package:programa_1/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  final String titulo;
  final String description;
  final IconData? icono;

  const CustomCardType1({
    super.key,
    required this.titulo,
    required this.description,
    this.icono = Icons.error_outline,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(
            icono,
            color: AppTheme.secondary,
          ),
          title: Text(titulo),
          subtitle: Text(description),
          trailing: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Inicio  10:00'),
              Text('Fin     10:00'),
            ],
          ),
          onTap: () => {
            
          },
          onLongPress: () => {},
        ),
      ]),
    );
  }
}
