import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pa_rentalcam/booking/riwayat_booking.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
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
      body: tabs[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Color(0xffEBE1D8),
            gap: 5,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                iconSize: 30,
              ),
              GButton(
                icon: Icons.date_range,
                text: 'Booking',
                iconSize: 30,
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                iconSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
