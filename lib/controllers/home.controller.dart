import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "andrew".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList dataList = [1, 2, 3].obs;
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "name": "andrew",
    "age": 25,
  }.obs;
  int angkaSelanjutnya = 4;
  // void data

  void ubahNamaMap() {
    dataMap['name'] = "wiliam gans";
  }

  void ubahDataList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahBool() {
    dataBool.toggle();
  }

  void incrementDouble() {
    dataDouble.value++;
  }

  void decrementDouble() {
    dataDouble.value--;
  }

  void updateData() {
    dataString.value = "robert";
  }

  void resetData() {
    dataString.value = "andrew";
  }

  void incrementInt() {
    dataInt++;
  }

  void decrementInt() {
    dataInt--;
  }
}
