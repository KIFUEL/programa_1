import 'package:flutter/material.dart';

class EditPerfilScreen extends StatelessWidget {
  const EditPerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
      ),
      body: Center(
        child: Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(color: Colors.red, shape: BoxShape.circle)),
      ),
    );
  }
}
