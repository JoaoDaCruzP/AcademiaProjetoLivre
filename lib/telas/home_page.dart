import 'package:academia/components/custom_texfild.dart';
import 'package:flutter/material.dart';
import 'package:academia/telas/tela_cadastro.dart';
import 'package:academia/telas/tela_personal.dart';
import 'package:academia/telas/tela_recuperacao_senha.dart';
import 'package:academia/telas/tela_usuario.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();

  final _emailControl = TextEditingController();
  final _senhaControl = TextEditingController();

  void login() {
    if (formKey.currentState!.validate()) {
      var email = _emailControl.text;
      var senha = _senhaControl.text;

      if (email == 'admin@' && senha == '123456') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TelaPersonal(),
          ),
        );
      }
      if (email == 'user@' && senha == '123456') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TelaUsuario(),
          ),
        );
      }
    }
  }

  void telaCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaCadastro(),
      ),
    );
  }

  void recuperacao() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TelaRecuperacaoSenha(),
      ),
    );
  }

  void alerta() {
    showDialog(
      context: context,
      builder: (buildContext) => const AlertDialog(
        title: Text('Erro de login'),
        content: Text('Usuario ou senha incorreto'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 90, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Image(
                  image: AssetImage('lib/images/logo.png'),
                ),
              ),
              Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    icon: Icons.mail,
                    controller: _emailControl,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => (value!.isEmpty
                        ? 'Este campo é Obrigatório'
                        : !value.contains('@')
                            ? 'Digite um E-mail valido'
                            : null),
                  ),
                  CustomTextField(
                    label: 'Senha',
                    icon: Icons.key,
                    controller: _senhaControl,
                    keyboardType: TextInputType.number,
                    validator: (value) => (value!.isEmpty
                        ? 'Este campo é Obrigatório'
                        : value.length < 6
                            ? 'Senha deve conter pelo menos 6 caracteres'
                            : null),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: telaCadastro,
                    child: const Text('Cadastrar'),
                  ),
                  TextButton(
                    onPressed: recuperacao,
                    child: const Text('Esqueceu a senha'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
                  onPressed: login,
                  child: const Text('login'),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
