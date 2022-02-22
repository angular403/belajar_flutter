import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LatihanGetx extends StatelessWidget {
  // const LatihanGetx({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan GETX "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${c.data.value}",
                  style: TextStyle(fontSize: 50),
                )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.increment();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    c.decrement();
                  },
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var data = 0.obs;

  increment() {
    data = data--;
  }

  decrement() {
    data = data++;
  }
}
