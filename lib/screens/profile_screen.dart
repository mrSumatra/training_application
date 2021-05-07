import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_application/screens/settings_screen.dart';
import 'package:training_application/util/dimen.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text("Profile",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontSize: Dimen().textTitle)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              SizedBox(height: Dimen().spacingXLarge),
              SizedBox(child: MyCircleAvatar())
            ])),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            currentIndex: 1,
            selectedItemColor: Colors.lightBlue,
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
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/cool_kids_bust.png')
      ),
      radius: Dimen().avatarRadiusBorder,
      backgroundColor: Colors.lightBlue,
    );
  }
}
