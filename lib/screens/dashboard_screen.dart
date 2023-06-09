import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';

import '../booking/riwayat_booking.dart';
import '../profil/profil_screen.dart';
import 'home/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> tabs = [
    HomePage(),
    RiwayatBooking(),
    ProfilePage(),
  ];

  int currentPage = 0;

  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child:  SafeArea(
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
