import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormText extends StatefulWidget {
  const FormText({Key? key}) : super(key: key);

  @override
  _FormTextState createState() => _FormTextState();
}

class _FormTextState extends State<FormText> {
  bool isHidden = true;

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Latihan TextField"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: passC,
            obscureText: isHidden,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "Password",
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  if (isHidden == true) {
                    isHidden = false;
                  } else {
                    isHidden = true;
                  }
                  setState(() {});
                  print(
                      "Email Anda : ${emailC.text} & Password Anda : ${passC.text} ");
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
