import 'package:flutter/material.dart';

class TelaPersonal extends StatelessWidget {
  const TelaPersonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Tela do Personal'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 80,
              ),
              child: Image(
                image: AssetImage('lib/images/icon_personal.png'),
              ),
            ),
            Text(
              'Seja bem vindo',
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Profissional de Educação Fisica',
              style: TextStyle(
                  fontSize: 25
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                'Aqui você pode criar, editar, deletar fichar e acompanhar todo o andamento dos seus clientes de perto.',
                style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
