import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/detail_camera/detail_camera_screen.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(24),
                          child: Image.asset('assets/images/back.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/search_bar.png",
                      height: 55,
                    ),
                  ),
                  const SizedBox(width: 6),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/camera_1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/camera_1.jpg"),
                                      fit: BoxFit.cover,
                                    )),
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
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/camera_1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
