import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/screens/auth/register_screen.dart';

import '../../data/model/user_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Masuk",
                  style: AppStyles.textBlackColor.copyWith(
                      fontSize: 22,
                      fontWeight: AppStyles.semiBold,
                      color: Color(0xff191410)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Silahkan login akun kamu",
                  style: TextStyle(
                      color: Color(0xFFADA8A4),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins"),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ic_login.png',
                    width: 228,
                    height: 229,
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(24),
                child: Form(
                  key: _keyForm,
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 14,
                              fontWeight: AppStyles.semiBold,
                              color: Color(0xff191410),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextFormField(
                            controller: _emailController,
                            style:
                                AppStyles.textBlackColor.copyWith(fontSize: 14),
                            validator: (string) {
                              if (string != null) {
                                return null;
                              } else {
                                return "masukkan email anda!";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              hintText: "Masukkan email kamu",
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: AppStyles.textGrey2Color
                                  .copyWith(fontSize: 14),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(
                                  color: AppColors.orangeColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 14,
                              fontWeight: AppStyles.semiBold,
                              color: Color(0xff191410),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            validator: (string) {
                              if (string != null) {
                                return null;
                              } else {
                                return "masukkan password anda!";
                              }
                            },
                            style:
                                AppStyles.textBlackColor.copyWith(fontSize: 14),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              hintText: "Masukkan password kamu",
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: AppStyles.textGrey2Color
                                  .copyWith(fontSize: 14),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(
                                  color: AppColors.orangeColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 55),
                              child: MaterialButton(
                                onPressed: () async {
                                  if (_keyForm.currentState!.validate()) {
                                    String email = _emailController.text;
                                    String password = _passwordController.text;

                                    try {
                                      UserCredential userCredential =
                                          await FirebaseAuth.instance
                                              .signInWithEmailAndPassword(
                                                  email: email,
                                                  password: password);

                                      if (userCredential.user?.uid != null) {
                                        final userRef = await FirebaseFirestore
                                            .instance
                                            .collection('Users')
                                            .doc(userCredential.user!.uid)
                                            .get();

                                        debugPrint("userRef: ${userRef}");
                                        final userModel =
                                            UserModel.fromMap(userRef.data()!);

                                        final prefs = await SharedPreferences
                                            .getInstance();
                                        await prefs.setString(
                                            'email', userModel.email);
                                        await prefs.setString(
                                            'name', userModel.fullName);
                                        await prefs.setString('profileUrl',
                                            userModel.profilePicture ?? "");
                                        await prefs.setString('phoneNumber',
                                            userModel.phoneNumber);

                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    DashboardScreen()));
                                      }
                                    } catch (e) {
                                      debugPrint("e: $e");
                                      if (e.toString() ==
                                          "[firebase_auth/unknown] Given String is empty or null") {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Masukkan email dan password Anda")));
                                      }

                                      if (e.toString() ==
                                          '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Email tidak ditemukan")));
                                      }

                                      if (e.toString() ==
                                          '[firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "No internet connection")));
                                      }

                                      if (e.toString() ==
                                          '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Password Anda salah")));
                                      }
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Masukkan email atau password anda!")));
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xff191410),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Masuk",
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 16,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "atau",
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.semiBold,
                            color: Color(0xffADA8A4),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum punya akun?",
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.semiBold,
                            color: Color(0xff7B756F),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        RegisterPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Registrasi",
                                style: AppStyles.textBlackColor.copyWith(
                                  fontSize: 16,
                                  fontWeight: AppStyles.semiBold,
                                  color: Color(0xffFBA651),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
