import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_application/screens/profile_screen.dart';
import 'package:training_application/util/dimen.dart';
import 'package:training_application/util/my_colors.dart';

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
      backgroundColor: MyColors().themeWhite,
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
                    focusColor: MyColors().themeBlue),
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
                      color: isHidden
                          ? MyColors().borderColor
                          : MyColors().errorRed,
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
                    hintStyle: TextStyle(color: MyColors().textColor),
                    focusColor: MyColors().themeBlue),
              ),
            ),
            SizedBox(height: 30),
            Container(
                height: Dimen().spacingXXLarge,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: MyColors().themeBlue,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimen().radiusNormal),
                      ) // background
                  ),
                  onPressed: () {
                    if (_emailFormKey.currentState.validate() &&
                        _passwordFormKey.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfileScreen()));
                    }
                  },
                  child: Text("Log In",
                    style: TextStyle(
                      fontSize: Dimen().textActon,
                      color: MyColors().themeWhite,
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
