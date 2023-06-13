import 'package:flutter/material.dart';
import 'package:pa_rentalcam/app/styles/app_styles.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';

class tentangPage extends StatelessWidget {
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
                            'Tentang Kami',
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
              Text(
                'Selamat datang di MBG Rental Camera!!!',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 18,
                  fontWeight: AppStyles.semiBold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Layanan rental kamera yang mengusung konsep inovatif untuk memenuhi kebutuhan fotografi Anda. Dengan MBG Rental Camera, Anda dapat melakukan proses pemesanan kamera dengan mudah melalui aplikasi android MBG Rental Kamera, dan kemudian mengambil kamera yang telah Anda pesan di toko fisik kami yang terletak di Dusun Semambungan, Desa Sumberagung, Kecamatan Jatirejo, Kabupaten Mojokerto.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Melalui aplikasi MBG Rental Camera yang user-friendly, Anda dapat memilih kamera yang sesuai dengan kebutuhan Anda. Aplikasi ini menyajikan katalog kamera lengkap dengan berbagai merek terkenal dan jenis kamera yang tersedia. Anda dapat menelusuri fitur dan spesifikasi kamera dengan mudah, membantu Anda membuat keputusan yang tepat sesuai dengan proyek fotografi atau videografi yang akan Anda kerjakan.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Setelah memilih kamera yang diinginkan, Anda dapat melakukan proses pemesanan melalui aplikasi. Anda dapat memilih durasi penyewaan yang Anda butuhkan, mulai dari beberapa jam hingga beberapa hari. Setelah pembayaran selesai dilakukan melalui platform pembayaran terintegrasi yang aman, Anda akan menerima konfirmasi penyewaan dengan detail pesanan kamera.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Selanjutnya, Anda dapat mengambil kamera yang telah Anda pesan di toko fisik MBG Kamera yang beralamat di Dusun Semambungan, Desa Sumberagung, Kecamatan Jatirejo, Kabupaten Mojokerto.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Di toko MBG Kamera, Anda akan diberikan pelayanan yang profesional. Kami akan memverifikasi identitas Anda dan memastikan kecocokan dengan data pemesanan Anda. Setelah itu, mereka akan menunjukkan kamera yang telah Anda booking dan memberikan penjelasan singkat tentang penggunaannya.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Setelah mengambil kamera yang telah Anda pesan, Anda dapat menggunakannya sesuai dengan kebutuhan Anda selama periode penyewaan. Kami menjamin bahwa kamera yang kami sediakan dalam kondisi yang baik dan siap untuk digunakan.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Setelah selesai menggunakan kamera, Anda dapat mengembalikannya ke toko MBG Kamera sesuai dengan kesepakatan yang telah ditentukan. Tim kami akan melakukan pemeriksaan cepat untuk memastikan bahwa kamera dalam kondisi yang sama seperti saat Anda mengambilnya. Jika ditemukan kerusakan atau kehilangan, kami akan memproses sesuai dengan kebijakan.',
                style: AppStyles.textBlackColor.copyWith(
                  fontSize: 14,
                  fontWeight: AppStyles.reguler,
                  color: Colors.black,
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
