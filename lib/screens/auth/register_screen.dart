import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';
import 'package:pa_rentalcam/data/repository/repository.dart';
import 'package:pa_rentalcam/screens/auth/add_profil_screen.dart';
import 'package:pa_rentalcam/screens/auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _fullNameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneNumberController =
        TextEditingController();
    final TextEditingController _password1Controller = TextEditingController();
    final TextEditingController _password2Controller = TextEditingController();

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
                  "Registrasi",
                  style: AppStyles.textBlackColor.copyWith(
                      fontSize: 22,
                      fontWeight: AppStyles.semiBold,
                      color: Color(0xff191410)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Silahkan buat akun kamu",
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
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 14,
                              fontWeight: AppStyles.semiBold,
                              color: Color(0xff191410),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              controller: _fullNameController,
                              style: AppStyles.textBlackColor
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
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
                            "Nomor Telepon",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 14,
                              fontWeight: AppStyles.semiBold,
                              color: Color(0xff191410),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              controller: _phoneNumberController,
                              keyboardType: TextInputType.number,
                              style: AppStyles.textBlackColor
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
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
                          Container(
                            width: double.infinity,
                            child: TextField(
                              controller: _emailController,
                              style: AppStyles.textBlackColor
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
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
                          Container(
                            width: double.infinity,
                            child: TextField(
                              obscureText: true,
                              controller: _password1Controller,
                              style: AppStyles.textBlackColor
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
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
                            "Ulangi Password",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 14,
                              fontWeight: AppStyles.semiBold,
                              color: Color(0xff191410),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              obscureText: true,
                              controller: _password2Controller,
                              style: AppStyles.textBlackColor
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
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
                                  if (_password1Controller.text ==
                                      _password2Controller.text) {
                                    try {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                              email: _emailController.text,
                                              password:
                                                  _password1Controller.text);
                                      final userId = FirebaseAuth
                                          .instance.currentUser!.uid;

                                      await Repository().createUser(
                                        UserModel(
                                          id: userId,
                                          fullName: _fullNameController.text,
                                          phoneNumber:
                                              _phoneNumberController.text,
                                          email: _emailController.text,
                                        ),
                                      );

                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: _emailController.text,
                                              password:
                                                  _password1Controller.text);

                                      final prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setString(
                                          'email', _emailController.text);
                                      await prefs.setString(
                                          'name', _fullNameController.text);
                                      await prefs.setString('profileUrl', "");
                                      await prefs.setString('phoneNumber',
                                          _phoneNumberController.text);

                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DashboardScreen()));
                                    } catch (e) {
                                      if (e.toString() ==
                                          '[firebase_auth/invalid-email] The email address is badly formatted.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Masukkan format email dengan benar")));
                                      } else if (e.toString() ==
                                          '[firebase_auth/weak-password] Password should be at least 6 characters') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Password kurang dari 6 karakter")));
                                      } else if (e.toString() ==
                                          '[firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "No internet connection")));
                                      }
                                    }
                                    try {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                              email: _emailController.text,
                                              password:
                                                  _password1Controller.text);

                                      final userId = FirebaseAuth
                                          .instance.currentUser!.uid;

                                      await Repository().createUser(
                                        UserModel(
                                          id: userId,
                                          fullName: _fullNameController.text,
                                          phoneNumber:
                                              _phoneNumberController.text,
                                          email: _emailController.text,
                                        ),
                                      );

                                      await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: _emailController.text,
                                              password:
                                                  _password1Controller.text);

                                      final prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setString(
                                          'email', _emailController.text);
                                      await prefs.setString(
                                          'name', _fullNameController.text);
                                      await prefs.setString('profileUrl', "");
                                      await prefs.setString('phoneNumber',
                                          _phoneNumberController.text);

                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DashboardScreen()));
                                    } catch (e) {
                                      if (e.toString() ==
                                          '[firebase_auth/invalid-email] The email address is badly formatted.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Masukkan format email dengan benar")));
                                      } else if (e.toString() ==
                                          '[firebase_auth/weak-password] Password should be at least 6 characters') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "Password kurang dari 6 karakter")));
                                      } else if (e.toString() ==
                                          '[firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "No internet connection")));
                                      }
                                    }
                                  } else {
                                    final snackBar = SnackBar(
                                      content: const Text(
                                          'Password yang dimasukkan tidak sesuai!'),
                                      backgroundColor: (Colors.black12),
                                      action: SnackBarAction(
                                        label: 'dismiss',
                                        onPressed: () {},
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
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
                                      "Registrasi",
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
                          "Sudah punya akun?",
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
                                            LoginPage()));
                              },
                              child: Text(
                                "Masuk",
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
