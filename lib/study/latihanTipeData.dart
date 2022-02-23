import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_week3/controllers/home.controller.dart';
import 'package:latihan_week3/pages/home_page.dart';

class LatihanTipeData extends StatelessWidget {
  // const LatihanTipeData({Key? key}) : super(key: key);
  final homeC = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Tipe Data Getx"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          // Tipe Data RxInt
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataInt}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        homeC.decrementInt();
                      },
                      child: Text("-")),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        homeC.incrementInt();
                      },
                      child: Text("+")),
                ],
              ),
            ],
          ),
          // Tipe Data RxString
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataString}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        homeC.updateData();
                      },
                      child: Text("Update")),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        homeC.resetData();
                      },
                      child: Text("Reset")),
                ],
              ),
              // Tipe Data RxString
            ],
          ),
          // TIPE DATA DOUBLE
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataDouble}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        homeC.decrementDouble();
                      },
                      child: Text("-")),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        homeC.incrementDouble();
                      },
                      child: Text("+")),
                ],
              ),
            ],
          ),
          // TIPE DATA BOOL
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataBool}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        homeC.ubahBool();
                      },
                      child: Text(
                        "Ganti Bool",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ],
          ),
          // TIPE DATA LIST
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataList}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        homeC.ubahDataList();
                      },
                      child: Text(
                        "Data List",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ],
          ),
          // TIPE DATA MAPPING
          Divider(color: Colors.red, thickness: 5),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text("${homeC.dataMap['id']}"),
                  ),
                  title: Text("${homeC.dataMap['name']}"),
                  subtitle: Text("${homeC.dataMap['age']}"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    homeC.ubahNamaMap();
                  },
                  child: Text("ubah nama")),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                // homeC.ubahNamaMap();
                Get.offAllNamed("/home");
              },
              child: Text("back")),
        ],
      ),
    );
  }
}
