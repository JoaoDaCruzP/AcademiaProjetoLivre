import 'package:academia/components/custom_card.dart';
import 'package:flutter/material.dart';

class TelaLoja extends StatelessWidget {
  const TelaLoja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo a Loja'),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card9.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card7.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card4.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card8.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card2.png',
                        textButton: 'R\$: 99,99',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card1.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card2.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card9.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card4.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card5.png',
                        textButton: 'R\$: 99,99',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card2.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'BCA',
                        funcion: () {},
                        image: 'lib/images/icon_card6.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey PRO',
                        funcion: () {},
                        image: 'lib/images/icon_card3.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card1.png',
                        textButton: 'R\$: 99,99',
                      ),
                      CustomCardLoja(
                        textProduto: 'Whey',
                        funcion: () {},
                        image: 'lib/images/icon_card9.png',
                        textButton: 'R\$: 99,99',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
