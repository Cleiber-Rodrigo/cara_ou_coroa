
import 'package:cara_ou_coroa/TelaResultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'main.dart';
import 'dart:math';

class CaraOuCoroa extends StatefulWidget {


  @override
  State<CaraOuCoroa> createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {

  void _exibirResultado(){
    //Sortear cara ou coroa
    var opcoes = ["cara" , "coroa"];
    var nAleatorio = Random().nextInt(2);
    var escolhaApp = opcoes[nAleatorio];

   Navigator.push(
       context,
       MaterialPageRoute(builder: (context)=>  TelaResultado(escolhaApp))
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Definindo a cor de fundo com cor hexadecimal (inserimos 0xff + o código da cor)
      backgroundColor: Color(0xff61bd86),
     body: Container(

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
          Image.asset("imagens/logo.png"),
           GestureDetector(
             onTap: _exibirResultado,
             child: Image.asset("imagens/botao_jogar.png"),
           )
         ],
       ),
     ),
    );
  }
}
