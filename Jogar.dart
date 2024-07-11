import 'dart:math';
import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);
  @override
  State<Jogar> createState() => _JogarState();
}
class _JogarState extends State<Jogar> {
  void _exibirResultado(){
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("imagens/logo.png"),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("imagens/botao_jogar.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Produced by Ferrari",
                style: TextStyle(
                  height: 1,
                  fontSize: 9,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
