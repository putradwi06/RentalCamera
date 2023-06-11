import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo,',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 22,
                          fontWeight: AppStyles.semiBold,
                          color: Color(0xff191410),
                        ),
                      ),
                      Text(
                        'Putra DwiS',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 22,
                          fontWeight: AppStyles.semiBold,
                          color: Color(0xff191410),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Mau booking kamera apa?',
                        style: AppStyles.textGrey2Color.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.reguler,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              padding: EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Cari kamera buat anda',
                  hintStyle: AppStyles.textGrey2Color.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Rekomendasi',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.semiBold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: 220,
                      height: 323,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              width: 180,
                              height: 220,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "Sonny A600",
                                    style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xff191410)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "32.5 MP APS-C Cosmos",
                                    style: AppStyles.textGrey2Color.copyWith(
                                      fontSize: 14,
                                      fontWeight: AppStyles.medium,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: 220,
                      height: 323,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              width: 180,
                              height: 220,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "Sonny A600",
                                    style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xff191410)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "32.5 MP APS-C Cosmos",
                                    style: AppStyles.textGrey2Color.copyWith(
                                      fontSize: 14,
                                      fontWeight: AppStyles.medium,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: 220,
                      height: 323,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              width: 180,
                              height: 220,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "Sonny A600",
                                    style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xff191410)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "32.5 MP APS-C Cosmos",
                                    style: AppStyles.textGrey2Color.copyWith(
                                      fontSize: 14,
                                      fontWeight: AppStyles.medium,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: 220,
                      height: 323,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              width: 180,
                              height: 220,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "Sonny A600",
                                    style: AppStyles.textBlackColor.copyWith(
                                        fontSize: 18,
                                        fontWeight: AppStyles.medium,
                                        color: Color(0xff191410)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  child: Text(
                                    "32.5 MP APS-C Cosmos",
                                    style: AppStyles.textGrey2Color.copyWith(
                                      fontSize: 14,
                                      fontWeight: AppStyles.medium,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
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
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Baru tahun ini',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.semiBold,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.grey,
                                      ),
                                      width: 70,
                                      height: 70,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      width: 382,
                      height: 90,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                            SizedBox(width: 16.0),
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
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: 382,
                          height: 90,
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      color: Colors.grey[300],
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16.0),
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
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
