import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: Text('${index + 1}.-  Nombre'),
          trailing: Text('Puntaje: $index'),
          leading: const Icon(
            Icons.leaderboard_rounded,
            //color: AppTheme.secondary,
          ),
        ),
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
