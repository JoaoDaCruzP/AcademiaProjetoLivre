import 'package:academia/components/custom_texfild.dart';
import 'package:flutter/material.dart';

class TelaRecuperacaoSenha extends StatefulWidget {
  const TelaRecuperacaoSenha({Key? key}) : super(key: key);

  @override
  State<TelaRecuperacaoSenha> createState() => _TelaRecuperacaoSenhaState();
}

class _TelaRecuperacaoSenhaState extends State<TelaRecuperacaoSenha> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  void cadastroSucesso() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (buildContext) => const AlertDialog(
          title: Text('Sucesso'),
          content: Text('Senha enviada para seu email!\n'
              'So que não.\n'
              'É mintiira!!\n'
              'pelo menos por enquanto!! :) \n'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Tela de recuperação de Senha'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                'Digite seu email para receber o link de recuperação de senha',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                icon: Icons.mail,
                label: 'E-mail',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => (value!.isEmpty
                    ? 'Este campo é Obrigatório'
                    : !value.contains('@')
                        ? 'Email é Invalido'
                        : null),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: cadastroSucesso,
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.orange),
                ),
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
