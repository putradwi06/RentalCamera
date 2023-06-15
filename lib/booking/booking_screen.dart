import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/detail_camera/detail_camera_screen.dart';
import 'package:pa_rentalcam/screens/auth/add_profil_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BookingPage> {
  int _selectedButtonIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("assets/images/back.png")),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          'Booking',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 18,
                            fontWeight: AppStyles.semiBold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, bottom: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/images/camera_3.png"),
                                    ),
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  width: 91,
                                  height: 91,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sony A6000',
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '325 MP APS-CCosmos',
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 14,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xffADA8A4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(18),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/kurang.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '1',
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/tambah.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Rp600.000',
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.semiBold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 6,
              // ),
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, bottom: 26),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: new AssetImage(
                                          "assets/images/camera_3.png"),
                                    ),
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  width: 91,
                                  height: 91,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Canon Y400',
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'APS-C Cosmos',
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 14,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xffADA8A4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(18),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/kurang.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '1',
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/tambah.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Rp350.000',
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.semiBold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 26),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          "Pilih Waktu Sewa",
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.semiBold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      for (int i = 0; i < 6; i++)
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                _selectedButtonIndex = i;
                              },
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 40,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: _selectedButtonIndex == i
                                  ? Color(0xffFBA651)
                                  : Colors.white,
                              border: Border.all(color: Color(0xffEBE1D8)),
                            ),
                            child: Center(
                              child: Text(
                                '${i + 1} Hari',
                                style: AppStyles.textBlackColor.copyWith(
                                  fontSize: 16,
                                  fontWeight: AppStyles.reguler,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Detail Transaksi",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.semiBold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 13,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Sony A 6000",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.reguler,
                                      color: Color(0xff7B756F),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Rp600.000",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Canon Y400",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.reguler,
                                      color: Color(0xff7B756F),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Rp350.000",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "Total",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.reguler,
                                      color: Color(0xff7B756F),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Rp950.000",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Color(0xffFBA651),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: SizedBox(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Transfer Rekening",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.semiBold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/bca.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BCA",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 16,
                                          fontWeight: AppStyles.medium,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Putra Dwi",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 14,
                                          fontWeight: AppStyles.reguler,
                                          color: Color(0xff7B756F),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "0023 4283 2331",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ic_bri.jpg',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BRI",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 16,
                                          fontWeight: AppStyles.reguler,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Putra Dwi",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 14,
                                          fontWeight: AppStyles.reguler,
                                          color: Color(0xff7B756F),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "0023 4283 2331",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/bni.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BNI",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 16,
                                          fontWeight: AppStyles.reguler,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Putra Dwi",
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 14,
                                          fontWeight: AppStyles.reguler,
                                          color: Color(0xff7B756F),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "0023 4283 2331",
                                    style: AppStyles.textBlackColor.copyWith(
                                      fontSize: 16,
                                      fontWeight: AppStyles.medium,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 30),
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
                                    builder: (context) => addProfil()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff191410),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Konfirmasi",
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
                  SizedBox(
                    height: 10,
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
