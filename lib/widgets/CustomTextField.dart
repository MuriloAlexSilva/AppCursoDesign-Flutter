import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextField({Key key, this.label = "", this.hint = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        Container(height: 4), //Para colocar um espaço
        TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: UnderlineInputBorder(
                //Coloca a cor somente quando entra em foco
                borderSide: BorderSide(color: Theme.of(context).accentColor)),
            disabledBorder: UnderlineInputBorder(
                //Coloca a cor somente quando entra em foco
                borderSide: BorderSide(color: Theme.of(context).accentColor)),
          ),
        ),
      ],
    );
  }
}
