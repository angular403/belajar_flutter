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
        title: Text("Form Login"),
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
              labelText: "Email",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
            keyboardType: TextInputType.text,
            autocorrect: false,
            decoration: InputDecoration(
              labelText: "Password",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: IconButton(
                onPressed: () {
                  if (isHidden == true) {
                    isHidden = false;
                  } else {
                    isHidden = true;
                  }
                  setState(() {});
                },
                icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              primary: Colors.green[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () {
              print(
                  "Email Anda : ${emailC.text} & Password Anda : ${passC.text}");
            },
          ),
        ],
      ),
    );
  }
}
