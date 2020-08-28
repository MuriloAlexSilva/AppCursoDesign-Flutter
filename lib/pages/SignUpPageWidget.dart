import 'package:flutter/material.dart';
import 'package:leitura1/widgets/Circlebutton.dart';
import 'package:leitura1/widgets/CustomTextField.dart';

class SignUpPageWidget extends StatefulWidget {
  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  //Widget de linha escrita
  Widget _textForgot() {
    return Container(
      //O texto foi colocado dentro de um container para poder ocupar a tela toda
      //juntamente com o double.infinity
      width: double.infinity,
      child: Text("Forgot password",
          textAlign: TextAlign.right, //Alinhar o texto a direita
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor)),
    );
  }

  Widget _lineTextLine() {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(color: Colors.black, height: 15)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR CONNECT WITH",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Divider(color: Colors.black, height: 15)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Colors.white.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 80),
          Icon(Icons.headset_mic,
              color: Theme.of(context).accentColor, size: 50),
          Spacer(),
          CustomTextField(label: "EMAIL", hint: "example@gmail.com"),
          Container(height: 25),
          CustomTextField(label: "PASSWORD", hint: "*****************"),
          Container(height: 25),
          _textForgot(),
          Container(height: 25),
          CircleButton(label: "Login"),
          Container(height: 25),
          _lineTextLine(),
          Container(height: 25),
          Row(
            children: <Widget>[
              Expanded(
                //o expanded seria para expandir até o maximo que puder.
                child: CircleButton(
                  backgroundColor: Colors.blue[800],
                  label: "Facebook",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(width: 20),
              Expanded(
                child: CircleButton(
                  backgroundColor: Colors.red[700],
                  label: "Google",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(height: 50),
        ],
      ),
    );
  }
}
