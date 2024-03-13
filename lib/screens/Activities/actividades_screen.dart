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
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'piramide',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'hexagonos',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'perros|',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'piramide',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
              inicio: '12:20',
              fin: '04:00',
              tipo: 'piramide',
            ),
          ],
        ));
  }
}
