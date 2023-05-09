import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tela de cadastro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.all(20),
                child:  Text(
                  'Bem vindo a tela de Cadastro',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: null,
                decoration: const InputDecoration(
                  label: Text('Nome Completo'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: null,
                decoration: const InputDecoration(
                  label: Text('CPF'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: null,
                decoration: const InputDecoration(
                  label: Text('Data de Nascimento'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: null,
                decoration: const InputDecoration(
                  label: Text('Endereço'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
