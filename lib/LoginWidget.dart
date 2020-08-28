import 'package:flutter/material.dart';

import 'pages/LoginPageWidget.dart';
import 'pages/LoginSignInPageWidget.dart';
import 'pages/SignUpPageWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand, //Para expandir para a tela tola
        children: <Widget>[
          Image.asset("assets/images/monte.jpg",
              fit: BoxFit.cover //Para fazer a imagem ocupar a tela toda
              ),
          PageView(
            //Para inserir telas com scrool lateral
            children: <Widget>[
              SignUpPageWidget(),
              LoginPageWidget(),
              LoginSignInPageWidget(),
            ],
          ) //Para adicionar imagens na tela de fundo
        ],
      ),
    );
  }
}
