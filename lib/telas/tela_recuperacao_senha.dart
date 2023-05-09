import 'package:flutter/material.dart';

class TelaRecuperacaoSenha extends StatelessWidget {
  const TelaRecuperacaoSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tela de recuperação de Senha'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80,left: 40,right: 40),
        child: Column(
          children: [
            const Text(
              'Digite seu email para receber o link de recuperação de senha',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: null,
              decoration: const InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
