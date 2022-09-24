import 'package:cara_ou_coroa/CaraOuCoroa.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaResultado extends StatefulWidget {
  //Criando um atributo e um construtor para receber o valor passado na outra tela
  var valor;
  TelaResultado(this.valor);

  @override
  State<TelaResultado> createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {


  @override
  Widget build(BuildContext context) {
  //Configurando a imagem de acordo com o valor passado na outra tela
    var caminhoImagem = "imagens/moeda_cara.png";
    if (widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: (){
              //Usando o Navigator.pop ,eu fecho a tela atual e aparece a que estiver embaixo
              Navigator.pop(context);
            },
            child: Image.asset("imagens/botao_voltar.png"),
          )
        ],
      ),
      ),
    );
  }
}
