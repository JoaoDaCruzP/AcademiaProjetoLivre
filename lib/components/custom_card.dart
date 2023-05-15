import 'package:flutter/material.dart';

class CustomCardLoja extends StatelessWidget {

  final String textProduto;
  final VoidCallback funcion;
  final String image;
  final String textButton;

  const CustomCardLoja({
    Key? key,
    required this.textProduto,
    required this.funcion,
    required this.image, required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image(image: AssetImage(image),
            width: 120,
            height: 150,),
          ),
          Text(textProduto,style: const TextStyle(
            fontSize: 20
          ),),
          TextButton(onPressed: funcion, child: Text(textButton)),
        ],
      ),
    );
  }
}
