import 'package:flutter/material.dart';
import 'package:leitura1/widgets/Circlebutton.dart';
import 'package:leitura1/widgets/CustomTextField.dart';

class LoginSignInPageWidget extends StatefulWidget {
  @override
  _LoginSignInPageWidgetState createState() => _LoginSignInPageWidgetState();
}

class _LoginSignInPageWidgetState extends State<LoginSignInPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 40), //Coloca um tamanho simetrico nos widgets
      color: Colors.white
          .withOpacity(0.9), //deixa a tela com um pouco de opacidade
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic,
              size: 50,
              color: Theme.of(context)
                  .accentColor //O Theme.of(context).accentColor seria para pegar a cor definido no Main
              //em accentColor
              ),
          Container(height: 25), //Somente para dar espaço
          CustomTextField(label: "Email", hint: "example@gmail.com"),
          Container(height: 25),
          CustomTextField(label: "Password", hint: "**********"),
          Container(height: 25),
          CustomTextField(label: "Confirm Password", hint: "************"),
          Container(height: 25), //Somente para dar espaço
          Container(
            //O texto foi colocado dentro de um container para poder ocupar a tela toda
            //juntamente com o double.infinity
            width: double.infinity,
            child: Text("Already have an account?",
                textAlign: TextAlign.right, //Alinhar o texto a direita
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor,
                )),
          ),
          Container(height: 40),
          CircleButton(
            label: "Sign Up",
          ),
        ],
      ),
    );
  }
}
