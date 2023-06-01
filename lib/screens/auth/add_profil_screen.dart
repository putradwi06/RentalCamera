import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

class addProfil extends StatelessWidget {
  const addProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 100.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Tambahkan foto profil",
              style: AppStyles.textBlackColor.copyWith(
                fontSize: 18,
                fontWeight: AppStyles.semiBold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Lengkapi profil kamu dengan",
              style: AppStyles.textGrey2Color.copyWith(
                fontSize: 16,
                fontWeight: AppStyles.semiBold,
              ),
            ),
            Text(
              "Menambahkan foto profil",
              style: AppStyles.textGrey2Color.copyWith(
                fontSize: 16,
                fontWeight: AppStyles.semiBold,
              ),
            ),
            SizedBox(
              height: 90,
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
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff191410),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Lanjutkan",
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
          ],
        ),
      ),
    );
  }
}
