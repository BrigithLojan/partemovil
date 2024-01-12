import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radiación UV'),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/unl_0.png', // Reemplaza con la ruta de tu imagen
              
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          // Fondo de pantalla completa
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/HEADER1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Contenido de la página
          Center(
            child: Container(
              width: 350,
              height: 350,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 62, 57, 146).withOpacity(0.3),
                border: Border.all(
                  color: Colors.black,
                  
                  width: 2.0,
                ),
              ),
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 140,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 53, 44, 124).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: const Column(
                      //valores quemados
                      children: <Widget>[
                        Center(child: Text('UV')),
                        Center(child: Text('ID 50')),
                        Center(
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 110.0, color: Colors.red),
                          ),
                        ),
                        Text('11/01/2024'),
                        Text('13:10'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Expanded(
                    child: Text(
                      'Información de texto aquí',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}