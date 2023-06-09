import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';

class ProfilePage extends StatelessWidget {
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
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 18,
                  fontWeight: AppStyles.semiBold,
                  color: Color(0xff191410),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 58),
              CircleAvatar(
                radius: 120,
              ),
              SizedBox(height: 20),
              Text(
                'Putra DwiS',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.semiBold,
                  color: Color(0xff191410),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4),
              Text(
                'putradwi@gmail.com',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.reguler,
                  color: Color(0xffADA8A4),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Data Pribadi',
                  style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Pengaturan',
                  style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'Tentang Kami',
                  style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Keluar',
                  style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
