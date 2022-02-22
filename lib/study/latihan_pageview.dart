import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class LatihanPageview extends StatelessWidget {
  const LatihanPageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Container(
              // child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_cqdzv4dr.json'),
              // child: Image.network("https://picsum.photos/id/237/200/300"),
              child: Lottie.asset('assets/page1.json', fit: BoxFit.contain),
              width: 250,
              height: 250,
            ),
          ),
        ),
        PageViewModel(
          title: "Title of Second page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Container(
              // child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_cqdzv4dr.json'),
              child: Lottie.asset('assets/page2.json', fit: BoxFit.contain),
              // child: Image.network("https://picsum.photos/id/238/200/300"),
              // child: Lottie.asset("assets/https://assets7.lottiefiles.com/private_files/lf30_fcotb6bb.json"),
              width: 250,
              height: 250,
            ),
          ),
        ),
      ],
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      showNextButton: true,
      next: Text("Next >>"),
      onDone: () {
        // When done button is press
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Dashboard(),
            ));
      },
    ); //Material App;
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "email",
                hintText: "Your Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              autocorrect: false,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Your Password",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
          ],
        ));
  }
}
