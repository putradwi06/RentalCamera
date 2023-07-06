import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';
import 'package:pa_rentalcam/screens/auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {


  openSplashScreen(bool isLogin, UserModel? userModel) async {

    if (userModel != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', userModel.email);
      await prefs.setString('name', userModel.fullName);
      await prefs.setString('profileUrl', userModel.profilePicture ?? "");
      await prefs.setString('phoneNumber', userModel.phoneNumber);
    }

    return Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return isLogin ? DashboardScreen() : LoginPage();
      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.active && snapshot.data != null) {
          return FutureBuilder(
            future: FirebaseFirestore.instance.collection("Users").doc(snapshot.data!.uid).get(),
            builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> usersSnap) {
              if (usersSnap.data?.data() != null && usersSnap.hasData) {
                openSplashScreen(true, UserModel.fromMap(usersSnap.data!.data()!));
              }
              return Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: Image.asset(
                    "assets/images/mbg_logo1.png",
                    width: 1000,
                    height: 500,
                  ),
                ),
              );
            },
          );
        }

        if (snapshot.connectionState == ConnectionState.active && snapshot.data == null) {
          openSplashScreen(false, null);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Image.asset(
                "assets/images/mbg_logo1.png",
                width: 1000,
                height: 500,
              ),
            ),
          );
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset(
              "assets/images/mbg_logo1.png",
              width: 1000,
              height: 500,
            ),
          ),
        );
      },
    );
  }
}
