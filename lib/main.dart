import 'package:flutter/material.dart';
import 'package:pa_rentalcam/screens/auth/login_screen.dart';
import 'package:pa_rentalcam/screens/dashboard_screen.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
