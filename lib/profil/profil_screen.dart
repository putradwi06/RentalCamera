import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? currentUser;
  String? profileImageUrl;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  Future<void> getCurrentUser() async {
    currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser!.uid)
          .get();
      setState(() {
        profileImageUrl = snapshot['profilePicture'];
      });
    }
  }

  Future<void> _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      await _uploadImageToFirebase(pickedImage.path);
    }
  }

  Future<void> _uploadImageToFirebase(String imagePath) async {
    final firebaseStorageRef = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('profile_images/${currentUser!.uid}.jpg');
    await firebaseStorageRef.putFile(File(imagePath));
    final imageUrl = await firebaseStorageRef.getDownloadURL();
    setState(() {
      profileImageUrl = imageUrl;
    });
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUser!.uid)
        .update({'profilePicture': imageUrl});
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
                  GestureDetector(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: ClipRRect(
                      child: profileImageUrl != null
                          ? Image.network(profileImageUrl!)
                          : Image.asset("assets/images/add_profile.png"),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Putra DwiS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff191410),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                'putradwi@gmail.com',
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
                  // Navigasi ke halaman pengaturan
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
                onTap: () {
                  // Navigasi ke halaman tentang
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
                onTap: () {
                  // Logout pengguna
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
