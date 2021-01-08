import 'package:flutter/material.dart';
import 'LoginWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(accentColor: Color(0xFFFFF65E5C)),
      home: LoginWidget(),
    );
  }
}
