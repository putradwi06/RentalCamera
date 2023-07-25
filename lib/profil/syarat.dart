import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';

class syaratPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DashboardScreen()));
                      },
                      child: Row(
                        children: [
                          Image.asset("assets/images/back.png"),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            'Syarat Rental',
                            style: AppStyles.textBlackColor.copyWith(
                              fontSize: 22,
                              fontWeight: AppStyles.semiBold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 16),
              Text(
                'SYARAT RENTAL / SEWA KAMERA',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 18,
                  fontWeight: AppStyles.semiBold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '- Memberikan data nama yang harus sesuai dengan KTP, SIM, NPWP/KTM.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Memberikan semua nomor seluler aktif.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Memberikan nomor telepon Telkom rumah.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Memberikan nomor telepon kantor.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Bersedia untuk memberikan 2 identitas Anda (asli) + jaminan berupa STNK/BPKB/motor (tergantung besar alat yang disewa) untuk disimpan oleh kami dan Anda dapat mengambilnya pada saat pengembalian barang.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Wajib memberikan atau menunjukkan tanda pengenal minimal 3 buah tanda pengenal (asli bukan fotokopi) dengan data alamat yang sama untuk ditunjukkan ke administrasi titik fokus sebagai bukti, adapun tanda pengenal tersebut dapat meliputi: KTP, SIM, Pasport, STNK, Kartu Keluarga, NPWP, Surat-surat tagihan (listrik, Telkom, kartu kredit, Jamsostek, dll).',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              Text(
                '- Jika pengembalian kamera telat atau kena denda, maka besar denda telat perharinya adalah sama dengan harga sewa kamera tersebut',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
