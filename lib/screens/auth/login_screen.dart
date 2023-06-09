import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/bottomBar/bottom_bar.dart';
import 'package:pa_rentalcam/bottomBar/bottom_bar2.dart';
import 'package:pa_rentalcam/screens/auth/register_screen.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                          top: BorderSide(color: Colors.orange),
                          left: BorderSide(color: Colors.orange),
                          right: BorderSide(color: Colors.orange),
                          bottom: BorderSide(color: Colors.orange),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "putra@gmail.com",
                          contentPadding: EdgeInsets.all(10),
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
                            top: BorderSide(color: Color(0xffEBE1D8)),
                            left: BorderSide(color: Color(0xffEBE1D8)),
                            right: BorderSide(color: Color(0xffEBE1D8)),
                            bottom: BorderSide(color: Color(0xffEBE1D8)),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            hintText: ""),
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
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNav2()));
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
                                      RegisterPage()));
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
            ],
          ),
        ),
      ),
    );
  }
}
