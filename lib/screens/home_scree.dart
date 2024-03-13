import 'package:flutter/material.dart';
import 'package:programa_1/routes/routes.dart';

import '../widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indexActual,
        children: AppRoutes.paginas,
      ),
      bottomNavigationBar: CustomBottonNavigationBar(
        indexActual: indexActual,
        onTap: (index) {
          setState(() {
            indexActual = index;
          });
        },
      ),
    );
  }
}
