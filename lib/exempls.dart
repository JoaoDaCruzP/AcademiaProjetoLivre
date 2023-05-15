import 'package:academia/exempls2.dart';
import 'package:flutter/material.dart';

class IniciarTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Jogo de Cartas'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Iniciar'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartasTela()),
            );
          },
        ),
      ),
    );
  }
}
