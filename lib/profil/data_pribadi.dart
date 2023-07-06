import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/image_helper.dart';

class dataPribadi extends StatefulWidget {
  final String? urlProfile;

  dataPribadi(this.urlProfile);

  @override
  _dataPribadiState createState() => _dataPribadiState();
}

class _dataPribadiState extends State<dataPribadi> {
  File? profileImage;
  String? urlProfile;
  bool isLoading = false;


  Future<void> _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        profileImage = File(pickedImage.path);
      });
    }
  }

  @override
  void initState() {
    if (widget.urlProfile != null) urlProfile = widget.urlProfile;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Image.asset("assets/images/back.png"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DashboardScreen()));
                    },
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Ganti Foto Profil',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  _pickImageFromGallery();
                },
                child: profileImage == null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: urlProfile != null && urlProfile != ""
                      ? Image.network(
                          urlProfile!,
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          "assets/images/add_profile.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                ) : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.file(profileImage!, height: 120,
                    width: 120,
                    fit: BoxFit.cover,),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFBA651),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () async {
                  // Send Image
                  if (profileImage != null) {
                    setState(() => isLoading = true);
                    String _imgUrl =
                        await FirebaseStorageHelper.uploadImageProfile(
                            profileImage!);

                    await FirebaseFirestore.instance
                        .collection('Users')
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .update({'profilePicture': _imgUrl});

                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('profileUrl');
                    await prefs.setString('profileUrl', _imgUrl);
                    setState(() => isLoading = false);
                  }
                },
                child: isLoading ? CircularProgressIndicator() : Text('Ganti Foto Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
