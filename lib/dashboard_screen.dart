import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../booking/riwayat_booking.dart';
import '../profil/profil_screen.dart';

class DashboardScreen extends StatefulWidget {

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<Widget> tabs;

  String? email;
  String? password;
  String? name;
  String? profileUrl;

  @override
  void initState() {
    tabs = [
      HomePage(namaPengguna: ''),
      riwayatBooking(),
    ];

    Future.microtask(() => SharedPreferences.getInstance()).then((prefs) {
      email = prefs.getString('email');
      password = prefs.getString('phoneNumber');
      name = prefs.getString('name');
      profileUrl = prefs.getString('profileUrl');

      tabs.add(
        ProfilePage(
            email: prefs.getString('name')!,
            name: prefs.getString('name')!,
            phoneNumber: prefs.getString('phoneNumber')!,
            profileUrl: prefs.getString('profileUrl')),
      );
    });

    super.initState();
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 38,
              vertical: 16,
            ),
            child: GNav(
              backgroundColor: Colors.white,
              color: AppColors.blackColor,
              activeColor: AppColors.blackColor,
              tabBackgroundColor: Color(0xffEBE1D8),
              gap: 5,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              selectedIndex: currentPage,
              textStyle: AppStyles.textBlackReguler,
              onTabChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconSize: 24,
                ),
                GButton(
                  icon: Icons.date_range,
                  text: 'Booking',
                  iconSize: 24,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconSize: 24,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: tabs.elementAt(currentPage),
      ),
    );
  }
}
