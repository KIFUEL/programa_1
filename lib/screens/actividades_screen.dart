import 'package:flutter/material.dart';
import 'package:programa_1/widgets/widgets.dart';

class ActividadesScreen extends StatelessWidget {
  const ActividadesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Actividades"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
            CustomCardType1(
              titulo: 'Rompecabeza',
              description: 'Desarrolla la actividad 1',
            ),
          ],
        ));
  }
}
