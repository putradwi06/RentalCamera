import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';

class riwayatBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(24),
              child: Column(
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
            ),
            Divider(),
            TabBar(
              unselectedLabelColor: Color(0xffADA8A4),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              dividerColor: Colors.black,
              indicatorColor: Colors.black,
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text(
                    "Denda",
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 14,
                      fontWeight: AppStyles.medium,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Belum Dibayar",
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 14,
                      fontWeight: AppStyles.medium,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Selesai",
                    style: AppStyles.textBlackColor.copyWith(
                      fontSize: 14,
                      fontWeight: AppStyles.medium,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 382,
                        height: 200,
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
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        width: 91,
                                        height: 91,
                                        alignment: Alignment.center,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sony A6000',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
                                              fontSize: 18,
                                              fontWeight: AppStyles.medium,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '325 MP APS-CCosmos',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Lewat 1 Hari',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
                                            fontSize: 16,
                                            fontWeight: AppStyles.medium,
                                            color: Color(0xffF96161),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Rp600.000',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
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
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 382,
                        height: 200,
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
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        width: 91,
                                        height: 91,
                                        alignment: Alignment.center,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sony A6000',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
                                              fontSize: 18,
                                              fontWeight: AppStyles.medium,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '325 MP APS-CCosmos',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                    margin: EdgeInsets.all(24),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Belum Dibayar',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
                                            fontSize: 16,
                                            fontWeight: AppStyles.medium,
                                            color: Color(0xffFBA651),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Rp600.000',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
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
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 382,
                        height: 200,
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
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        width: 91,
                                        height: 91,
                                        alignment: Alignment.center,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sony A6000',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
                                              fontSize: 18,
                                              fontWeight: AppStyles.medium,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            '325 MP APS-CCosmos',
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Belum Dibayar',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
                                            fontSize: 16,
                                            fontWeight: AppStyles.medium,
                                            color: Color(0xff20F1B3),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Rp600.000',
                                          style:
                                              AppStyles.textBlackColor.copyWith(
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
