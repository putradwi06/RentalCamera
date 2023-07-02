import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/data/repository/repository.dart';
import 'package:pa_rentalcam/detail_camera/detail_camera_screen.dart';

class search extends StatefulWidget {
  final String? filter;

  search({this.filter = null});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.only(top: 16, right: 24, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DashboardScreen()));
                    },
                    child: Image.asset('assets/images/back.png'),
                  ),
                  const SizedBox(width: 12),
                  widget.filter == null
                      ? Expanded(
                          child: TextField(
                            autofocus: true,
                            onChanged: (value) {
                              setState(() {
                                _query = value;
                              });
                            },
                            style: AppStyles.textBlackReguler,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              hintText: 'Cari camera',
                              hintStyle: AppStyles.textGrey2Color,
                              contentPadding:
                                  const EdgeInsets.only(right: 8, left: 12),
                              filled: true,
                              fillColor: AppColors.whiteColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            _query.isNotEmpty || widget.filter != null
                ? StreamBuilder(
                    stream: Repository().getListCamera(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (snapshot.hasData) {
                        List<CameraModel> listCamera = snapshot.data ?? [];

                        if (_query.isNotEmpty) {
                          listCamera = listCamera
                              .where((camera) => camera.title
                                  .toLowerCase()
                                  .contains(_query.toLowerCase()))
                              .toList();
                        }

                        if (widget.filter != null) {
                          listCamera = listCamera
                              .where((camera) => camera.type
                                  .toLowerCase()
                                  .contains(widget.filter!))
                              .toList();
                        }

                        return Expanded(
                          child: ListView.builder(
                              itemCount: listCamera.length,
                              itemBuilder: (_, index) {
                                final camera = listCamera[index];
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              DetailPage(
                                            camera: camera,
                                          ),
                                        ),
                                      );
                                    },
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            camera.picture),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        camera.title,
                                                        style: AppStyles
                                                            .textBlackColor
                                                            .copyWith(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              AppStyles.medium,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        camera.subTitle,
                                                        style: AppStyles
                                                            .textBlackColor
                                                            .copyWith(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              AppStyles.medium,
                                                          color:
                                                              Color(0xffADA8A4),
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
                                );
                              }),
                        );
                      }

                      return const Center(child: CircularProgressIndicator());
                    },
                  )
                : Center(
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Text(
                        "Silahkan cari kamera kesayangan Anda",
                        textAlign: TextAlign.center,
                        style: AppStyles.textGrey2Color.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.reguler,
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
