import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [Image.asset("assets/images/back.png")],
            ),
            SizedBox(
              width: 84,
            ),
            Text(
              'Detail Kamera',
              style: AppStyles.textBlackColor.copyWith(
                fontSize: 18,
                fontWeight: AppStyles.semiBold,
                color: Color(0xff191410),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/camera_1.png"),
                      ),
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    height: 406,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Canon Y400',
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 24,
                      fontWeight: AppStyles.semiBold,
                      color: Color(0xff191410),
                    ),
                  ),
                  Text(
                    'APS-5 Cosmos',
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 16,
                      fontWeight: AppStyles.reguler,
                      color: Color(0xff191410),
                    ),
                  ),
                  SizedBox(height: 26),
                  Text(
                    'Deskripsi',
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 16,
                      fontWeight: AppStyles.semiBold,
                      color: Color(0xff191410),
                    ),
                  ),
                  Text(
                    'Memiliki desain yang kokoh dan ergonomis, serta dilengkapi dengan berbagai fitur dan teknologi terbaru. Kamera ini memiliki sensor gambar yang besar dan berkualitas tinggi yang memungkinkan pengguna untuk mengambil foto dengan detail yang tajam dan warna yang akurat.',
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 16,
                      fontWeight: AppStyles.reguler,
                      color: Color(0xff7B756F),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Chart.png',
                      ),
                      Text(
                        'Stok Tersisa:',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.reguler,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '6',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.semiBold,
                          color: Color(0xffFBA651),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Text(
                        'Rp. 300.000',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 22,
                          fontWeight: AppStyles.semiBold,
                          color: Color(0xffFBA651),
                        ),
                      ),
                      Text(
                        'per hari',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 14,
                          fontWeight: AppStyles.reguler,
                          color: Color(0xffADA8A4),
                        ),
                      ),
                    ],
                  ),
                  // Sizedbox = weight: 58
                  SizedBox(width: 58),
                  Expanded(
                    child: Container(
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff191410),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Booking",
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
