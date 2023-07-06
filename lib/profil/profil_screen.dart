import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa_rentalcam/profil/data_pribadi.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';
import 'package:pa_rentalcam/profil/pengaturan.dart';
import 'package:pa_rentalcam/profil/tentang.dart';
import '../screens/auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app/image_picker_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/image_picker_helper.dart';

class ProfilePage extends StatefulWidget {
  final String email;
  final String phoneNumber;
  final String name;
  final String? profileUrl;

  ProfilePage({required this.email, required this.name, required this.phoneNumber, required this.profileUrl});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? currentUser;
  String? profileImageUrl;
  String? previousProfileImageUrl;

  @override
  void initState() {


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff191410),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 58),
              Column(
                children: [
                  widget.profileUrl != null ? ClipRRect(
                    child: Image.network(widget.profileUrl!,  height: 150,
                      width: 150,
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100),
                  ) : Image.asset("assets/images/add_profile.png",  height: 150,
                    width: 150,),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "${widget.name}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff191410),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                "${widget.email}",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffADA8A4),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0),
              ListTile(
                leading: Image.asset(
                  "assets/images/ic_edit_profile.png",
                  width: 32,
                  height: 32,
                ),
                title: Text(
                  'Data Pribadi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => dataPribadi(widget.profileUrl)));
                },
              ),
              Divider(),
              ListTile(
                leading: Image.asset(
                  "assets/images/ic_pengaturan.png",
                  width: 32,
                  height: 32,
                ),
                title: Text(
                  'Pengaturan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Pengaturan()));
                },
              ),
              Divider(),
              ListTile(
                leading: Image.asset(
                  "assets/images/ic_tentang.png",
                  width: 32,
                  height: 32,
                ),
                title: Text(
                  'Tentang Kami',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => tentangPage()));
                },
              ),
              Divider(),
              ListTile(
                leading: Image.asset(
                  "assets/images/ic_keluar.png",
                  width: 32,
                  height: 32,
                ),
                title: Text(
                  'Keluar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Future.microtask(() => SharedPreferences.getInstance()).then((prefs) {
                     prefs.remove('email');
                     prefs.remove('password');
                     prefs.remove('name');
                      prefs.remove('profileUrl');
                  });
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()));
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
