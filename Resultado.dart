import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}
class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if(widget.valor == "cara"){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(caminhoImagem),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("imagens/botao_voltar.png"),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
