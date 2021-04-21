import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/cool_kids_on_wheels.png"),
                    Text("SköL@ \nFlutter Dev", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
            )
        )
    );
  }
}
