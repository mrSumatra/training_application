import 'package:flutter/material.dart';
import 'package:training_application/screens/login_screen.dart';
import 'package:training_application/util/dimen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("Settings",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: Dimen().textTitle)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(Dimen().spacingNormal),
        child: ListView(
          children: [
            Image.asset("assets/images/cool_kids_bust.png"),
            SizedBox(height: Dimen().spacingNormal),
            Text("Account information", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: Dimen().textBold)),
            SizedBox(height: Dimen().spacingNormal),
            Form(child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(Dimen().radiusNormal)),
                  hintText: 'Your User Name Here',
                ),
              ),
            ),
            SizedBox(height: Dimen().spacingNormal),
            FlatButton(
              child: Text("Edit user name"),
              height: 56,
              color: Colors.lightBlue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimen().radiusNormal),
                  side: BorderSide(color: Colors.lightBlue)),
            ),
            SizedBox(height: Dimen().spacingNormal),
            TextButton(child: Text("log out", textAlign: TextAlign.center, style: TextStyle(fontSize: Dimen().textActon)),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              )
          ],
        ),
      ),
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
            ])
    );
  }
}
