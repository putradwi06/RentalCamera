import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa_rentalcam/app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  final List<Camera> recommendedCameras = [
    Camera(
      name: 'Canon EOS 5D Mark IV',
      description:
          'Kamera DSLR dengan resolusi tinggi dan kemampuan rekam video 4K.',
      imageUrl: 'https://images.app.goo.gl/5M37AXm6tYh5h8gW6',
    ),
    Camera(
      name: 'Nikon D850',
      description:
          'Kamera DSLR dengan sensor full-frame dan fitur pemotretan cepat.',
      imageUrl: 'https://example.com/nikon_d850.jpg',
    ),
    Camera(
      name: 'Sony Alpha A7 III',
      description:
          'Kamera mirrorless dengan kualitas gambar yang luar biasa dan stabilisasi gambar.',
      imageUrl: 'https://example.com/sony_alpha_a7iii.jpg',
    ),
  ];

  final List<Camera> latestCameras = [
    Camera(
      name: 'Fujifilm X-T4',
      description:
          'Kamera mirrorless dengan fitur canggih dan kualitas gambar yang mengagumkan.',
      imageUrl: 'https://fujifilm_xt4.jpg',
    ),
    Camera(
      name: 'Panasonic Lumix GH5',
      description:
          'Kamera mirrorless dengan kemampuan merekam video 4K dan fitur kreatif.',
      imageUrl: 'https://example.com/panasonic_gh5.jpg',
    ),
    Camera(
      name: 'Olympus OM-D E-M1 Mark III',
      description:
          'Kamera mirrorless dengan teknologi inovatif dan desain yang kokoh.',
      imageUrl: 'https://example.com/olympus_em1_mark3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'Halo,',
                        style: AppStyles.textBlackColor.copyWith(
                          fontSize: 22,
                          fontWeight: AppStyles.semiBold,
                          color: Color(0xff191410),
                        ),
                      ),
                      Text(
                        'Putra DwiS',
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
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage('https://example.com/profile_image.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Cari kamera buat anda',
                  hintStyle: AppStyles.textGrey2Color.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Rekomendasi',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.semiBold,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedCameras.length,
                itemBuilder: (context, index) {
                  final camera = recommendedCameras[index];
                  return Container(
                    width: 160,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          camera.imageUrl,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          camera.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          camera.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Baru tahun ini',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 16,
                  fontWeight: AppStyles.semiBold,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: latestCameras.length,
                itemBuilder: (context, index) {
                  final camera = latestCameras[index];
                  return ListTile(
                    leading: Image.network(
                      camera.imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(camera.name),
                    subtitle: Text(camera.description),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class Camera {
  final String name;
  final String description;
  final String imageUrl;

  Camera({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
