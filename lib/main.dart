import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyCounterApp());
}

class MyCounterApp extends StatelessWidget{
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(              /// we have to use "GetMatetiralApp" for using Get-X
      title: 'My Counter App',
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CounterController counterController = Get.put(CounterController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter App'),
      ),
      body: Center(
        child: Obx(
            () => Text(
              counterController.count.toString(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.w800,
              ),
            ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


class CounterController extends GetxController{
  RxInt count = 0.obs;

  void increment(){
    count++;
  }
}
