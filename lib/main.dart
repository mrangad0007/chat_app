import 'package:flutter/material.dart';
import 'package:chatapp/login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: LoginPage()
    );
  }
}


