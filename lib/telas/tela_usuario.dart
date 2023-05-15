import 'package:academia/telas/tela_loja.dart';
import 'package:flutter/material.dart';

class TelaUsuario extends StatefulWidget {
  const TelaUsuario({Key? key}) : super(key: key);

  @override
  State<TelaUsuario> createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TelaLoja()));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
        title: const Text('Tela do Usuario'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(50),
              child: Image(
                image: AssetImage('lib/images/icon_usuario.png'),
                height: 100,
                width: 100,
              ),
            ),
            Text(
              'Seja Bem vindo!!',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Aqui voce pode acompanhar funcionalidades como: '
              'Dias de treinos, exercicios do dia, peso, dietas, vencimentos de mensalidade, '
              'comprar produtos, entre outros.',
              style: TextStyle(fontSize: 20,color: Colors.green),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'AGORA TEMO UMA NOVIDADE\n\nAgora voce pode ir para a loja\n Basta usar'
              'o botão do carrinho\n no canto superior direito',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
