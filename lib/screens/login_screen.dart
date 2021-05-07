import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_application/screens/profile_screen.dart';
import 'package:training_application/util/dimen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  final _emailFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();
  bool isHidden = true;


  @override
  void dispose() {
    _emailFormKey.currentState.reset();
    _passwordFormKey.currentState.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(Dimen().spacingNormal),
          child: ListView(
            children: [
              Image.asset("assets/images/cool_kids_sitting.png"),
              SizedBox(height: 30),
              Text("log In",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              SizedBox(height: 30),
              Form(
                key: _emailFormKey,
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) return "Поле не должно быть пустым!";
                    if (value.length < 3)
                      return "Поле должно содержать более трех символов!";
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimen().radiusNormal)),
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Form(
                key: _passwordFormKey,
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) return "Поле не должно быть пустым!";
                    if (value.length < 3)
                      return "Поле должно содержать более трех символов!";
                  },
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset("assets/images/ic_eye.svg"),
                        color: isHidden ? Colors.grey : Colors.red,
                      onPressed: () {
                        setState(() {
                          isHidden = !isHidden;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimen().radiusNormal)),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 30),
              FlatButton(
                child: Text("Log In"),
                height: 56,
                color: Colors.lightBlue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimen().radiusNormal),
                    side: BorderSide(color: Colors.lightBlue)),
                onPressed: () {
                  if (_emailFormKey.currentState.validate() ||
                      _passwordFormKey.currentState.validate()) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                  }
                },
              ),
            ],
          ),
        ),
      );
  }
}
