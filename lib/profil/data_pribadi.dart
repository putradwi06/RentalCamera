import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';
import 'package:image_picker/image_picker.dart';

class dataPribadi extends StatefulWidget {
  @override
  _dataPribadiState createState() => _dataPribadiState();
}

class _dataPribadiState extends State<dataPribadi> {
  String? profileImageUrl;

  Future<void> _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        profileImageUrl = pickedImage.path;
      });
    }
  }

  void _navigateToProfilePage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(),
        fullscreenDialog: true,
      ),
    );

    if (result != null) {
      setState(() {
        profileImageUrl = result as String?;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/back.png"),
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
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  _pickImageFromGallery();
                },
                child: ClipRRect(
                  child: profileImageUrl != null
                      ? Image.file(
                          File(profileImageUrl!),
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          "assets/images/default_profile.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                  borderRadius: BorderRadius.circular(60),
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
                onPressed: () {
                  _navigateToProfilePage();
                },
                child: Text('Ganti Foto Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
