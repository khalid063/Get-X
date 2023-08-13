


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  /// make Controller's Object for GetX Class
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter')
      ),
      body: Center(
        child: GetBuilder<CounterController>( builder: (_) {            /// *** Wrap the Widget which we want to "Change" with "GetBuilder"  /// use Right Click -> "StreamBuilder" Wrap, it will be easier to code
          return Text(
            '${_counterController.count}',
            style: TextStyle(color: Colors.red, fontSize: 50),
          );
        }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counterController.increment();
        },child: Icon(Icons.add),
      ),
    );
  }
}

class CounterController extends GetxController {      /// *** Make Controller For GetXController
  int count = 0;

  void increment() {
    count++;
    update();                                         /// *** use 'update()" mathod for updating the widget which we want to change
  }
}
