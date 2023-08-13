


import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  final String massage;
  const WelcomeScreen({Key? key, required this.massage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Our get massage is : $massage'),
      ),
    );
  }
}
