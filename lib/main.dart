import 'package:flutter/material.dart';
import 'package:training_application/screens/login_screen.dart';

import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Main",
    debugShowCheckedModeBanner: false,
    home: SplashScreen())
  );
}

// void main() {
//   runApp(MaterialApp(
//       title: "Main",
//       debugShowCheckedModeBanner: false,
//       home: ProfileScreen())
//   );
// }
