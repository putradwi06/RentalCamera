import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pa_rentalcam/screens/auth/login_screen.dart';
// Ganti dengan halaman login yang ingin dituju setelah splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(), // Halaman splash screen
      routes: {
        '/login': (context) => LoginPage(), // Halaman login
      },
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(
          context, '/login'); // Mengarahkan ke halaman login setelah 4 detik
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Warna latar belakang splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MBG Rental Camera',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna tulisan splash screen
              ),
            ),
            SizedBox(height: 16),
            SpinKitFadingCube(
              color: Colors.white, // Warna animasi loading splash screen
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
