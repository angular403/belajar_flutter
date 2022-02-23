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
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Hallo",
                    "Ini adalah latihan snackbar",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    // borderColor: Colors.black,
                  );
                },
                child: Text("Snackbar")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Data Mahasiswa",
                  content: Text("data keseluruhan mahasiswa"),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("Save")),
                    ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                  ],
                );
              },
              child: Text("Dialog"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 300,
                    color: Colors.amber,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.camera),
                          title: Text("Camera"),
                        ),
                        ListTile(
                          leading: Icon(Icons.media_bluetooth_off),
                          title: Text("Media"),
                        ),
                        ListTile(
                          leading: Icon(Icons.person_add),
                          title: Text("Person"),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("BottomSheet"),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: Size(250, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
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
