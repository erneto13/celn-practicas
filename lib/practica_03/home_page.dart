import 'package:computo_nube/practica_03/datos_recibidos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctrlName = TextEditingController();
  int _valor = 1;
  final data = Data(nombre: '', sexo: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 3'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlName,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: 'Nombre',
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButton<int>(
              value: _valor,
              items: const [
                DropdownMenuItem(value: 1, child: Text('Masculino')),
                DropdownMenuItem(value: 2, child: Text('Femenino')),
              ],
              onChanged: (int? selected) {
                setState(() {
                  _valor = selected!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
              ),
              child: const Text('Enviar'),
              onPressed: () {
                setState(() {
                  data.nombre = ctrlName.text;

                  if (_valor == 1) {
                    data.sexo = 'Masculino';
                  } else if (_valor == 2) {
                    data.sexo = 'Femenino';
                  }

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DatosPage(data: data),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  String nombre;
  String sexo;

  Data({this.nombre = '', this.sexo = ''});
}
