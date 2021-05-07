import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    return Scaffold(
        backgroundColor: Colors.white,
            body: Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/cool_kids_on_wheels.png"),
                    SizedBox(height: 30),
                    Text("SköL@ \nFlutter Dev",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center)
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
            )
        );
  }
}
