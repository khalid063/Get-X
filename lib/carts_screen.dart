

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartsScreen extends StatelessWidget {
  const CartsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carts Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Carts Screen'),
            ElevatedButton(onPressed: (){
              Get.back(result: Parms('Khalid', 23));
              //Navigator.pop(context);
            }, child: Text('Back to Home'))
          ],
        )
      ),
    );
  }
}

class Parms {
  final String name;
  late final int age;

  Parms(this.name, this.age);
}
