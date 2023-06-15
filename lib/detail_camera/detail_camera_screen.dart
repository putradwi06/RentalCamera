import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/app/utils.dart';
import 'package:pa_rentalcam/booking/booking_screen.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

class DetailPage extends StatelessWidget {
final CameraModel camera;
  DetailPage({required this.camera});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DashboardScreen()));
                            },
                            child: Image.asset("assets/images/back.png")),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          'Detail Kamera',
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
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Container(
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: NetworkImage(camera.picture),
                        ),
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      height: 406,
                    ),
                    SizedBox(height: 30),
                    Text(
                      camera.title,
                      style: AppStyles.textBlackColor.copyWith(
                        fontSize: 24,
                        fontWeight: AppStyles.semiBold,
                        color: Color(0xff191410),
                      ),
                    ),
                    Text(
                      camera.subTitle,
                      style: AppStyles.textBlackColor.copyWith(
                        fontSize: 16,
                        fontWeight: AppStyles.reguler,
                        color: Color(0xff191410),
                      ),
                    ),
                    SizedBox(height: 26),
                    Text(
                      "Deskripsi",
                      style: AppStyles.textBlackColor.copyWith(
                        fontSize: 16,
                        fontWeight: AppStyles.semiBold,
                        color: Color(0xff191410),
                      ),
                    ),
                    Text(
                      camera.description,
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
                        SizedBox(
                          width: 2,
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
                          camera.stock.toString(),
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
                          konversiKeRupiah(camera.price),
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
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        BookingPage()));
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
      ),
    );
  }
}
