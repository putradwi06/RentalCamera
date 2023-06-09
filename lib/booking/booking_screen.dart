import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/screens/auth/add_profil_screen.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Booking',
              style: AppStyles.textBlackColor.copyWith(
                fontSize: 18,
                fontWeight: AppStyles.medium,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 382,
                height: 200,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 91,
                                height: 91,
                                color: Colors.grey[300],
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
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 26),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
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
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Text(
                          '24 Jam',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFBA651),
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Text(
                          '2 Hari',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Text(
                          '3 Hari',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Text(
                          '7 Hari',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                        child: Text(
                          '7 Hari',
                          style: AppStyles.textBlackColor.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 382,
                height: 200,
                child: Container(
                  color: Colors.white,
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
            SizedBox(height: 16.0),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                width: 382,
                height: 250,
                child: Container(
                  color: Colors.white,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BCA",
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 16,
                                        fontWeight: AppStyles.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Putra Dwi",
                                      style: AppStyles.textBlackColor.copyWith(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BRI",
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 16,
                                        fontWeight: AppStyles.reguler,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Putra Dwi",
                                      style: AppStyles.textBlackColor.copyWith(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BNI",
                                      style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 16,
                                        fontWeight: AppStyles.reguler,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Putra Dwi",
                                      style: AppStyles.textBlackColor.copyWith(
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
            SizedBox(height: 30),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
