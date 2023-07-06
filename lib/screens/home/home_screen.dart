import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/data/model/camera_model.dart';
import 'package:pa_rentalcam/data/repository/repository.dart';
import 'package:pa_rentalcam/detail_camera/detail_camera_screen.dart';
import 'package:pa_rentalcam/screens/home/search.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'filter_screen.dart';

class HomePage extends StatefulWidget {
  final String namaPengguna;

  const HomePage({Key? key, required this.namaPengguna}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? email;
  String? password;
  String? name;
  String? profileUrl;

  @override
  void initState() {
    Future.microtask(() => SharedPreferences.getInstance()).then((prefs) {
      email = prefs.getString('email');
      password = prefs.getString('password');
      name = prefs.getString('name');
      profileUrl = prefs.getString('profileUrl');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: Repository().getListCamera(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData) {
              final List<CameraModel> listCamera = snapshot.data ?? [];
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
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
                                '${name}',
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
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        search()));
                          },
                          child: Image.asset(
                            "assets/images/search_bar.png",
                            height: 55,
                          ),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return FilterListDialog();
                                });
                          },
                          child: Image.asset(
                            "assets/images/Filter.png",
                            height: 55,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      child: Text(
                        'Rekomendasi',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.semiBold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 330,
                      child: ListView.builder(
                        itemCount: listCamera.length,
                        padding: EdgeInsets.only(left: 24, right: 24),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          final camera = listCamera[index];
                          return Container(
                            width: 200,
                            margin: EdgeInsets.only(right: 16),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DetailPage(camera: camera),
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Image.network(
                                        camera.picture,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    height: 220,
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      child: Text(
                                        camera.title,
                                        style:
                                            AppStyles.textBlackColor.copyWith(
                                          fontSize: 18,
                                          fontWeight: AppStyles.medium,
                                          color: AppColors.blackColor,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 5,
                                          left: 20,
                                          right: 20,
                                          bottom: 20),
                                      child: Text(
                                        camera.subTitle,
                                        style:
                                            AppStyles.textGrey2Color.copyWith(
                                          fontSize: 14,
                                          fontWeight: AppStyles.light,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      child: Text(
                        'Baru tahun ini',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 16,
                          fontWeight: AppStyles.semiBold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SizedBox(
                        height: 350,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: listCamera.length,
                            reverse: true,
                            itemBuilder: (_, index) {
                              final camera = listCamera[index];
                              return GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(camera: camera))),
                                child: Container(
                                  height: 90,
                                  margin: EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: AppColors.whiteColor,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(18),
                                              child: Image.network(
                                                camera.picture,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 70,
                                            width: 70,
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 16.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            camera.title,
                                            style:
                                                AppStyles.textBlackColor.copyWith(
                                              fontSize: 18,
                                              fontWeight: AppStyles.medium,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            camera.subTitle,
                                            style:
                                                AppStyles.textBlackColor.copyWith(
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
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
