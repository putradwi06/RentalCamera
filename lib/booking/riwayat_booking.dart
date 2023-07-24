import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/data/model/booking_model.dart';
import 'package:pa_rentalcam/data/repository/repository.dart';

import '../app/utils.dart';

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
                    "Penyewaan",
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
            StreamBuilder(
              stream: Repository().getBookings(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasData) {
                  final List<Booking> listBooking = snapshot.data ?? [];
                  int denda = 0;
                  final listDenda = listBooking.where((element) {
                    if (element.status == "OnRental") {
                      if (DateTime.now().compareTo(element.endRentalTime!.toDate()) == 1) {
                        denda = lewat berapa hari; // cari lewat chat gpt cara menghitung jumlah hari sekarang dengan tanggal yang sudah ditentukan;
                      }
                    }
                    return false;
                  }).toList();

                  final listDalamPenyewaan = listBooking.where((element) => element.status == "OnRental" || element.status == "Pending").toList();
                  final listSelesai = listBooking.where((element) => element.status == "Completed").toList();

                  return Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        listDenda.isNotEmpty ? ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(16.0),
                              child: Center(
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
                                                      image: new NetworkImage(
                                                          listDenda[index].cameraBooking.picture),
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
                                                      listDenda[index].cameraBooking.title,
                                                      style: AppStyles.textBlackColor
                                                          .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: AppStyles.medium,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      listDenda[index].cameraBooking.subTitle,
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
                                          height: 8,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(6),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Denda",
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
                                                      fontSize: 16,
                                                      fontWeight: AppStyles.medium,
                                                      color: Color(0xffe33737),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    denda != 0 ? konversiKeRupiah(denda) : konversiKeRupiah(listDenda[index].totalPrice),
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
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
                            );
                          },
                          itemCount: listDenda.length,
                        ) : Center(child: Text("Belum ada riwayat", style: AppStyles.textBlackColor.copyWith(
                          fontSize: 14,
                          fontWeight: AppStyles.reguler,
                          color: Colors.grey,
                        ),),),
                        listDalamPenyewaan.isNotEmpty ? ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(16.0),
                              child: Center(
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
                                                      image: new NetworkImage(
                                                          listDalamPenyewaan[index].cameraBooking.picture),
                                                      fit: BoxFit.cover,
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
                                                      listDalamPenyewaan[index].cameraBooking.title,
                                                      style: AppStyles.textBlackColor
                                                          .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: AppStyles.medium,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      listDalamPenyewaan[index].cameraBooking.subTitle,
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
                                          height: 8,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 12),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    listDalamPenyewaan[index].status == "OnRental" ? "Sedang\npenyewaan" : "Pending",
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
                                                      fontSize: 16,
                                                      fontWeight: AppStyles.medium,
                                                      color: listDalamPenyewaan[index].status == "OnRental" ? Color(0xffe38b28) : Color(
                                                          0xff939090),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    konversiKeRupiah(listDalamPenyewaan[index].totalPrice),
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
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
                            );
                          },
                          itemCount: listDalamPenyewaan.length,
                        ) : Center(child: Text("Belum ada riwayat", style: AppStyles.textBlackColor.copyWith(
                          fontSize: 14,
                          fontWeight: AppStyles.reguler,
                          color: Colors.grey,
                        ),),),
                        listSelesai.isNotEmpty ? ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(16.0),
                              child: Center(
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
                                                      image: new NetworkImage(
                                                          listSelesai[index].cameraBooking.picture),
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
                                                      listSelesai[index].cameraBooking.title,
                                                      style: AppStyles.textBlackColor
                                                          .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: AppStyles.medium,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      listSelesai[index].cameraBooking.subTitle,
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
                                          height: 8,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(6),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Selesai',
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
                                                      fontSize: 16,
                                                      fontWeight: AppStyles.medium,
                                                      color: Color(0xff20F1B3),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    konversiKeRupiah(listSelesai[index].totalPrice),
                                                    style: AppStyles.textBlackColor
                                                        .copyWith(
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
                            );
                          },
                          itemCount: listSelesai.length,
                        ) : Center(child: Text("Belum ada riwayat", style: AppStyles.textBlackColor.copyWith(
                          fontSize: 14,
                          fontWeight: AppStyles.reguler,
                          color: Colors.grey,
                        ),),),
                      ],
                    ),
                  );
                }

                return const Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
