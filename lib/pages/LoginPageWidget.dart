import 'package:flutter/material.dart';
import 'package:leitura1/widgets/Circlebutton.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 40), //Coloca um tamanho simetrico nos widgets
        color: Theme.of(context)
            .accentColor
            .withOpacity(0.9), //Para colocar a opacidade
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset_mic,
              color: Colors.white,
              size: 40,
            ),
            Container(height: 30),
            RichText(
              /*Seria para concatenarmos varios textos e realizarmos designs diferentes*/
              text: TextSpan(
                style: TextStyle(fontSize: 20),
                children: <TextSpan>[
                  TextSpan(text: "Awesome"),
                  TextSpan(
                    text: "App",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(height: 120),
            CircleButton(
              backgroundColor: Colors.transparent,
              borderColor: Colors.white,
              label: "Sign Up",
            ),
            Container(height: 30),
            CircleButton(
              label: "Login",
              backgroundColor: Colors.white,
              textColor: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    );
  }
}
