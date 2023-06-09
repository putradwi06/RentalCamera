import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/app_constants.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/booking/booking_screen.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Detail Kamera',
          style: AppStyles.textBlackColor.copyWith(
            fontSize: 18,
            fontWeight: AppStyles.semiBold,
            color: Color(0xff191410),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Container(
                    height: 406,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage(AppConstants.camera1),
                        fit: BoxFit.cover,
                      ),
                    ),
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
            SizedBox(height: 16.0),
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => BookingPage()));
                        },
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
