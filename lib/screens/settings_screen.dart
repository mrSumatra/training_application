import 'package:flutter/material.dart';
import 'package:training_application/screens/login_screen.dart';
import 'package:training_application/util/dimen.dart';
import 'package:training_application/util/my_colors.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors().themeWhite,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: MyColors().themeBlack,
          ),
          title: Text("Settings",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: MyColors().themeBlack, fontSize: Dimen().textTitle)),
          actions: [
            IconButton(
                icon: Icon(Icons.delete_rounded),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                })
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: MyColors().themeWhite,
        ),
        body: Container(
          padding: EdgeInsets.all(Dimen().spacingNormal),
          child: ListView(
            children: [
              Hero(
                tag: "avatar",
                child: Image.asset("assets/images/cool_kids_bust.png"),
              ),
              SizedBox(height: Dimen().spacingNormal),
              Text("Account information",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Dimen().textBold)),
              SizedBox(height: Dimen().spacingNormal),
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimen().radiusNormal)),
                    hintText: 'Your User Name Here',
                  ),
                ),
              ),
              SizedBox(height: Dimen().spacingNormal),
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
                onPressed: () {},
                child: Text(
                  'Edit user name',
                  style: TextStyle(
                    fontSize: Dimen().textActon,
                    color: MyColors().themeWhite,
                  ),
                ),
              )
              ),
              SizedBox(height: Dimen().spacingNormal),
              TextButton(
                child: Text("log out",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimen().textActon, color: MyColors().textColor)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: MyColors().themeWhite,
            elevation: 0,
            currentIndex: 2,
            selectedItemColor: MyColors().themeBlue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                title: Text("Users"),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Profile")),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ]));
  }
}
