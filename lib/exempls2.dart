import 'package:flutter/material.dart';

class Carta {
  String imagem;
  bool virada;

  Carta(this.imagem, this.virada);
}

class CartasTela extends StatefulWidget {
  @override
  _CartasTelaState createState() => _CartasTelaState();
}

class _CartasTelaState extends State<CartasTela> {
  final List<Carta> cartas = [
    Carta('carta1.png', false),
    Carta('carta2.png', false),
    Carta('carta3.png', false),
    Carta('carta4.png', false),
    Carta('carta5.png', false),
    Carta('carta6.png', false),
    Carta('carta7.png', false),
    Carta('carta8.png', false),
    Carta('carta9.png', false),
  ];

  void _virarCarta(int index) {
    setState(() {
      cartas[index].virada = !cartas[index].virada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Cartas'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(cartas.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.red,
              child: GestureDetector(
                child: Image.asset('lib/images/${cartas[index].virada ? cartas[index].imagem : 'logo.png'}'),
                onTap: () {
                  _virarCarta(index);
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
