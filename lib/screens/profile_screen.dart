import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_application/screens/settings_screen.dart';
import 'package:training_application/util/dimen.dart';
import 'package:training_application/util/my_colors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors().themeWhite,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: MyColors().themeBlack,
          ),
          title: Text("Profile",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: MyColors().themeBlack, fontSize: Dimen().textTitle)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: MyColors().themeWhite,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(height: Dimen().spacingXLarge),
              Hero(tag: "avatar", child:MyCircleAvatar(),),
            ])),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: MyColors().themeWhite,
            elevation: 0,
            currentIndex: 1,
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

class MyCircleAvatar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyCircleAvatarState();
}

class _MyCircleAvatarState extends State<MyCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: CircleAvatar(
        child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
              borderRadius: BorderRadius.circular(Dimen().avatarRadius),
          ),
          radius: Dimen().avatarRadius,
          backgroundColor: MyColors().themeWhite,
          backgroundImage: AssetImage('assets/images/cool_kids_bust.png')
      ),
      radius: Dimen().avatarRadiusBorder,
      backgroundColor: MyColors().avatarBorderColor,
    );
  }
}
