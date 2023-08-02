import 'dart:io';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/data/model/booking_model.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/data/model/user_model.dart';
import 'package:pa_rentalcam/data/repository/repository.dart';
import 'package:pa_rentalcam/screens/home/home_screen.dart';

import '../app/image_helper.dart';
import '../app/image_picker_helper.dart';

class BookingPage extends StatefulWidget {
  final CameraModel cameraModel;

  const BookingPage({required this.cameraModel, Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _selectedButtonIndex = 1;
  int totalPrice = 0;
  NumberFormat rupiahFormat =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');

  @override
  void initState() {
    totalPrice = widget.cameraModel.price;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: Repository().getUser(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                final user = snapshot.data as UserModel;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child:
                                        Image.asset("assets/images/back.png")),
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
                        margin:
                            EdgeInsets.only(left: 24, right: 24, bottom: 14),
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
                                              image: NetworkImage(
                                                  widget.cameraModel.picture),
                                            ),
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
                                              widget.cameraModel.title,
                                              style: AppStyles.textBlackColor
                                                  .copyWith(
                                                fontSize: 18,
                                                fontWeight: AppStyles.medium,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              widget.cameraModel.subTitle,
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
                                      margin: EdgeInsets.all(18),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (widget.cameraModel
                                                            .quantity !=
                                                        null &&
                                                    widget.cameraModel
                                                            .quantity! >
                                                        1) {
                                                  widget.cameraModel.quantity =
                                                      widget.cameraModel
                                                              .quantity! -
                                                          1;
                                                  widget.cameraModel
                                                      .price = widget
                                                          .cameraModel
                                                          .quantity! *
                                                      (widget.cameraModel
                                                              .price ~/
                                                          (widget.cameraModel
                                                                  .quantity! +
                                                              1));
                                                  totalPrice =
                                                      widget.cameraModel.price *
                                                          _selectedButtonIndex;
                                                }
                                              });

                                              debugPrint(
                                                  "camera quantity: ${widget.cameraModel.quantity}");
                                            },
                                            child: Image.asset(
                                              'assets/images/kurang.png',
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            widget.cameraModel.quantity
                                                .toString(),
                                            style: AppStyles.textBlackColor
                                                .copyWith(
                                              fontSize: 16,
                                              fontWeight: AppStyles.medium,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (widget.cameraModel
                                                            .quantity !=
                                                        null &&
                                                    widget.cameraModel
                                                            .quantity !=
                                                        widget.cameraModel
                                                            .stock) {
                                                  widget.cameraModel.quantity =
                                                      widget.cameraModel
                                                              .quantity! +
                                                          1;
                                                  widget.cameraModel
                                                      .price = widget
                                                          .cameraModel
                                                          .quantity! *
                                                      (widget.cameraModel
                                                              .price ~/
                                                          (widget.cameraModel
                                                                  .quantity! -
                                                              1));
                                                  totalPrice =
                                                      widget.cameraModel.price *
                                                          _selectedButtonIndex;
                                                }
                                              });

                                              debugPrint(
                                                  "camera quantity: ${widget.cameraModel.quantity}");
                                            },
                                            child: Image.asset(
                                              'assets/images/tambah.png',
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            rupiahFormat.format(totalPrice),
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
                              for (int i = 1; i <= 6; i++)
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        _selectedButtonIndex = i;
                                        totalPrice = widget.cameraModel.price *
                                            _selectedButtonIndex;
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
                                      border:
                                          Border.all(color: Color(0xffEBE1D8)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${i} Hari',
                                        style:
                                            AppStyles.textBlackColor.copyWith(
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            widget.cameraModel.title,
                                            style: AppStyles.textBlackColor
                                                .copyWith(
                                              fontSize: 16,
                                              fontWeight: AppStyles.reguler,
                                              color: Color(0xff7B756F),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            rupiahFormat.format(totalPrice),
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                buildTotalPriceWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 24,
                          left: 24,
                          right: 24,
                        ),
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
                                SizedBox(
                                  height: 13,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
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
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: AppStyles.medium,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                "Putra Dwi",
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
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
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
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
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: AppStyles.reguler,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                "Putra Dwi",
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
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
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
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
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: AppStyles.reguler,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                "Putra Dwi",
                                                style: AppStyles.textBlackColor
                                                    .copyWith(
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
                                            style: AppStyles.textBlackColor
                                                .copyWith(
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
                                    final bookingModel = Booking(
                                      bookingId: "",
                                      cameraBooking: widget.cameraModel,
                                      rentalDay: _selectedButtonIndex,
                                      startRentalTime: null,
                                      endRentalTime: null,
                                      totalPrice: totalPrice,
                                      userBookingId: user.id,
                                      userBookingName: user.fullName,
                                      userBookingNoTlpn:
                                          int.parse(user.phoneNumber),
                                      createdAt: Timestamp.now(),
                                      status: "Pending",
                                      buktiTransfer: "",
                                    );

                                    showDialog(
                                        context: context,
                                        builder: (_) {
                                          return DialogReview(
                                              booking: bookingModel);
                                        });
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
                                        style:
                                            AppStyles.textBlackColor.copyWith(
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
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }

  Widget buildTotalPriceWidget() {
    return Padding(
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
            rupiahFormat.format(totalPrice),
            style: AppStyles.textBlackColor.copyWith(
              fontSize: 16,
              fontWeight: AppStyles.medium,
              color: Color(0xffFBA651),
            ),
          ),
        ],
      ),
    );
  }
}

class DialogReview extends StatefulWidget {
  final Booking booking;

  DialogReview({required this.booking, Key? key}) : super(key: key);

  @override
  _DialogReviewState createState() => _DialogReviewState();
}

class _DialogReviewState extends State<DialogReview> {
  File? imgBuktiTransfer;
  String? imgBuktiTransferUrl;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Kirim Bukti Transfer',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      content: Container(
        height: 350,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                final File? image = await ImagePickerHelper.imgFromCamera();
                if (image != null) {
                  setState(() {
                    imgBuktiTransfer = File(image.path);
                  });
                }
              },
              child: Container(
                height: 280,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: imgBuktiTransfer != null
                    ? Image.file(imgBuktiTransfer!)
                    : Text(
                        "Foto bukti transfer Anda!",
                        textAlign: TextAlign.center,
                      ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 50,
              child: MaterialButton(
                onPressed: () async {
                  if (imgBuktiTransfer != null) {
                    imgBuktiTransferUrl =
                        await FirebaseStorageHelper.uploadBuktiTransfer(
                            imgBuktiTransfer!);

                    await Repository().sendBooking(widget.booking
                        .copyWith(buktiTransfer: imgBuktiTransferUrl));

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => DashboardScreen()));
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff191410),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Kirim",
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
      ),
    );
  }
}
