import 'package:computo_nube/practica_03/home_page.dart';
import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  final Data data;

  const DatosPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Datos Recibidos'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre: ${data.nombre}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text('Sexo: ${data.sexo}', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
