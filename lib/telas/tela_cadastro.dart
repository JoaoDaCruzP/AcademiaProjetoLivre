import 'package:academia/components/custom_texfild.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {

  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _cpfController = TextEditingController();
  final _emailController = TextEditingController();

  void cadastrar() {
    if (_formKey.currentState!.validate()) {
      var nome = _nomeController.text;
      var cpf = _cpfController.text;
      var email = _emailController.text;
      debugPrint('nome:$nome,cpf:$cpf, Email:$email');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Tela de cadastro'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Bem vindo a tela de Cadastro',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CustomTextField(
                      label: 'Nome',
                      icon: Icons.person,
                      controller: _nomeController,
                      validator: (value) =>
                          (value!.isEmpty ? 'Este campo é Obrigatório' : null),
                    ),
                    CustomTextField(
                      label: 'CPF',
                      icon: Icons.account_box,
                      controller: _cpfController,
                      keyboardType: TextInputType.number,
                      validator: (value) => (value!.isEmpty
                          ? 'Este campo é obrigatorio'
                          : value.length < 11
                              ? 'Campo deve conter ao menos 11 digitos'
                              : null),
                    ),
                    CustomTextField(
                      icon: Icons.mail,
                      label: 'E-mail',
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => (value!.isEmpty
                          ? 'Este campo é Obrigatório'
                          : !value.contains('@')
                              ? 'Este Email é invalido'
                              : null),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: cadastrar,
                  child: const Text('Cadastrar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange)

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
