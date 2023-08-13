

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:get_x_2/home_screen.dart';

class CheckOutScreen extends StatelessWidget {

  final String massage;
  const CheckOutScreen({Key? key, required this.massage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Out Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Check Out Screen'),
            Text('Transferd Massage : $massage'),
            ElevatedButton(onPressed: (){
              Get.off(const HomeScreen());      /// previous screen remove
              Get.offAll(const HomeScreen());  /// previous all screen remove, no hostory
            }, child: Text('Home'))
          ],
        )
      ),
    );
  }
}
