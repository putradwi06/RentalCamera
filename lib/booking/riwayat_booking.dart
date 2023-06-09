import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';

class RiwayatBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                          'Riwayat Booking',
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
                          'Tangkap momen dengan kamera',
                          style: AppStyles.textGrey2Color.copyWith(
                            fontSize: 16,
                            fontWeight: AppStyles.reguler,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 47,
              ),
              Divider(),
              Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Color(0xffADA8A4),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    dividerColor: Colors.black,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Denda',
                      ),
                      Tab(
                        text: "Belum Dibayar",
                      ),
                      Tab(
                        text: "Selesai",
                      ),
                    ],
                  ),

                  // Expanded(
                  //   child: TabBarView(
                  //     children: [
                  //       Container(
                  //         child: Center(
                  //           child: Text("data"),
                  //         ),
                  //       ),
                  //       Container(
                  //         child: Center(
                  //           child: Text("data"),
                  //         ),
                  //       ),
                  //       Container(
                  //         child: Center(
                  //           child: Text("data"),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
