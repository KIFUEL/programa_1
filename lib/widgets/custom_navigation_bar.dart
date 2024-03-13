import 'package:flutter/material.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  final int indexActual;
  final Function(int) onTap;

  const CustomBottonNavigationBar({
    super.key,
    required this.indexActual,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexActual,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pending_actions_rounded),
          label: 'Actividades',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up_rounded),
          label: 'Top',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuracion',
        ),
      ],
    );
  }
}
