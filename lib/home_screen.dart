

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_2/carts_screen.dart';
import 'package:get_x_2/check_out_screen.dart';
import 'package:get_x_2/counter_screen.dart';
import 'package:get_x_2/welcome_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home Screen'),
            ElevatedButton(
            onPressed: () async {
              /// Get X Nagigation
              /// Context less Navigation
              //Get.to(CartsScreen());              /// work as push
              // final result = await Get.to(CartsScreen());
              // print(result);
              final Parms params = await Get.to(CartsScreen());
              print(params.name);
              print(params.age);
            },
            child: Text('Carts'),
          ),
            ElevatedButton(
              onPressed: () {
                /// Replace screen with Get X
                Get.off(CheckOutScreen(massage: 'Hello World',));
              },
              child: Text('Check-Out'),
            ),
            ElevatedButton(onPressed: (){
              Get.to(WelcomeScreen(massage : 'Welcome To Out Company'));
            }, child: Text('Welcome Screen'),),
            ElevatedButton(onPressed: (){
              Get.to(const CounterScreen());
            }, child: Text('Counter Screen'),),
        ],
        )
      ),
    );
  }
}
