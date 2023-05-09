import 'package:academia/telas/tela_cadastro.dart';
import 'package:academia/telas/tela_personal.dart';
import 'package:academia/telas/tela_recuperacao_senha.dart';
import 'package:academia/telas/tela_usuario.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailControl = TextEditingController();
  final senhaControl = TextEditingController();

  String email = '';
  String senha = '';

  void login() {
    email = emailControl.text;
    senha = senhaControl.text;

    if (email == 'admin' && senha == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TelaPersonal(),
        ),
      );
    }
    if (email == 'usuario' && senha == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaUsuario(),
        ),
      );
    }
    if (email != 'admin' && senha != '1234') {
      return alerta();
    }
    if (email != 'usuario' && senha != '1234') {
      return alerta();
    }
  }

  void cadastrar() {
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
      builder: (BuildContext) => const AlertDialog(
        title: Text('Erro de login'),
        content: Text('Usuario ou senha incorreto'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 80,left: 20,right: 20,bottom: 20),
        child: Column(
          children: [
            const Image(
              image: AssetImage('lib/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: emailControl,
                decoration: const InputDecoration(
                  label: Text('email'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: senhaControl,
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text('Senha'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: login,
              child: const Text('Acessar'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: cadastrar,
                  child: const Text('Cadastrar'),
                ),
                TextButton(
                  onPressed: recuperacao,
                  child: const Text('Esqueceu a senha'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
