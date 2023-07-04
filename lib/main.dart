import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pa_rentalcam/profil/data_pribadi.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';
import 'package:pa_rentalcam/screens/auth/login_screen.dart';
import 'package:pa_rentalcam/splashScreen/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
