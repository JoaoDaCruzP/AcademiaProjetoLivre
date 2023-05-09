import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TelaUsuario extends StatelessWidget {
   TelaUsuario({Key? key}) : super(key: key);

  CalendarView calendarView = CalendarView.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela do Usuario'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(50),
              child: Image(
                image: AssetImage('lib/images/icon_usuario.png'),
                height: 100,
                width: 100,
              ),
            ),
            const Text(
              'Seja Bem vindo!!',
              style: TextStyle(fontSize: 40),
            ),
             const SizedBox(
               height: 40,
             ),
            const Text(
              'Aqui voce pode acompanhar funcionalizades como: '
                  'Dias de treinos, exercicios do dia, peso, dietas, vencimentos de mensalidade, '
                  'comprar produtos, entre outros.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
             SfCalendar(
               allowViewNavigation: false,
               view: CalendarView.month,
               monthViewSettings: const MonthViewSettings(showAgenda: true),

             ),
          ],
        ),
      ),
    );
  }
}
