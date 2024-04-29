import 'package:flutter/material.dart';
import 'package:aplicacion_final_1/routes/widgets.dart';

class ActividadesScreen extends StatelessWidget {
  const ActividadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Actividades"), centerTitle: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType1(
              titulo: 'Rompecabeza Piramide',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'piramide',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza Multiplicacion',
              description: 'Desarrolla la actividad 2',
              inicio: '01:20',
              fin: '04:00',
              tipo: 'Multiplicacion',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza ',
              description: 'Desarrolla la actividad 3',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'Rompe3',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 4',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'Rompe4',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 5',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'Rompe5',
            ),
          ],
        ));
  }
}
