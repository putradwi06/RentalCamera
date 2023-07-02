import 'package:flutter/material.dart';

import '../app/styles/app_styles.dart';

class GantiNama extends StatefulWidget {
  @override
  _ChangeNamePageState createState() => _ChangeNamePageState();
}

class _ChangeNamePageState extends State<GantiNama> {
  String newName = '';

  void changeName() {
    // Lakukan sesuatu dengan nama baru, misalnya memperbarui data di server

    // Contoh aksi lainnya:
    // - Kirim permintaan HTTP ke server
    // - Perbarui tampilan dengan nama baru
    // - Simpan nama baru ke shared preferences atau database lokal

    setState(() {
      // Update state nama baru
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Ganti Username",
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 24,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    newName = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Masukkan nama baru',
                  hintStyle: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.reguler,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffFBA651)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                onPressed: () {
                  changeName();
                },
                child: Text('Ubah Nama Akun'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
