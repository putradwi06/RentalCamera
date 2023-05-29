import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:lottie/lottie.dart';

import 'package:pa_rentalcam/app/styles/app_styles.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: "Poppins"),
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
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          bottom: BorderSide(color: Colors.black),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "putra@gmail.com",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: "Poppins"),
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
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ""),
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
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ""),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Registrasi",
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 16,
                              fontWeight: AppStyles.semiBold,
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
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
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
                    style: TextStyle(
                      color: Color(0xff7B756F),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Masuk",
                    style: TextStyle(
                      color: Color(0xffFBA651),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
