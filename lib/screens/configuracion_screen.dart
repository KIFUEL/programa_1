import 'package:flutter/material.dart';
import 'package:programa_1/screens/screens.dart';

class ConfiguracionScreen extends StatelessWidget {
  const ConfiguracionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        children: [
          const CircleAvatar(
            maxRadius: 90,
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.b59f8f0ef1655341deeb5a306ba38b25?rik=joO6PcE24YyopA&riu=http%3a%2f%2ftusimagenesde.com%2fwp-content%2fuploads%2f2016%2f11%2fjake-el-perro-1.jpg&ehk=uGqcxXy6FEOPuBIS%2fugFLGWX3L6Dv91dD0YyW7LXJo8%3d&risl=&pid=ImgRaw&r=0'),
          ),
          const SizedBox(height: 10),
          const Center(child: Text('nombre de usuario')),
          // Agrega un espacio de 50 píxeles
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {}, // Agrega una función aquí
            child: const Text('Historial'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditPerfilScreen()));
            }, // Agrega una función aquí
            child: const Text('Editar Perfil'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {}, // Agrega una función aquí
            child: const Text('Guardar cambios'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {}, // Agrega una función aquí
            child: const Text('Guardar cambios'),
          ),
        ],
      ),
    );
  }
}
