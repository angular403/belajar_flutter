import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_week3/controllers/login_controller.dart';
import 'package:get_storage/get_storage.dart';

class LatihanGetStorage extends StatelessWidget {
  // const LatihanGetStorage({Key? key}) : super(key: key);

  final box = GetStorage();
  final LoginController loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("datarememberme") != null) {
      loginC.rememberMe.value = true;
      loginC.emailC.text = box.read("datarememberme")["email"];
      loginC.passC.text = box.read("datarememberme")["pass"];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Get Storage"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            autocorrect: false,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "Your Email....",
                labelText: "Email",
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          Obx(() => TextField(
                controller: loginC.passC,
                obscureText: loginC.isHidden.value,
                autocorrect: true,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Your Password...",
                    labelText: "password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          loginC.isHidden.toggle();
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    border: OutlineInputBorder()),
              )),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Obx(() => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      value: loginC.rememberMe.value,
                      onChanged: (value) => {
                        loginC.rememberMe.toggle(),
                      },
                      title: Text("Remember Me"),
                    )),
              ),
              // Padding(padding: EdgeInsets.only(right: 20)),
// ElevatedButton(onPressed: (){}, child: Text("ad")),
              ElevatedButton(
                onPressed: () {
                  loginC.login();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  // fixedSize: Size(150, 0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
