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

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenUI();
  }

}

class HomeScreenUI extends State<HomeScreen>{
  //int count = 0;
  RxInt count = 0.obs;    /// we have to use "RxInt and .obs" for using Get-X

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter App'),
      ),
      body: Center(
        child: Obx(           /// we have to wrap the fixed Widget into "Obx" for using Get-X
              () => Text(
            count.toString(),
            style: const TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Text(
      //     count.toString(),
      //     style: const TextStyle(
      //         fontSize: 30,
      //         color: Colors.red,
      //       fontWeight: FontWeight.w800,
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          // if(mounted){
          //   setState(() {});       /// we have to remove "setState"
          // }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
