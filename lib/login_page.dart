import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed");
        },
      ),
      // body: Text(
      //     'Let\'s sign you in',
      //     style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.brown,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 0.5
      //     ),
      // ),
      body: Text('Welcome back! \n You\'ve been missed',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.blueGrey
      ),
      ),
    );
  }
}
