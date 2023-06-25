import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa_rentalcam/profil/profil_screen.dart';
import '../app/styles/app_colors.dart';
import '../app/styles/app_styles.dart';

class Pengaturan extends StatefulWidget {
  @override
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscureOldPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => ProfilePage()));
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/back.png"),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'Reset Password',
                      style: AppStyles.textBlackColor.copyWith(
                        fontSize: 22,
                        fontWeight: AppStyles.semiBold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Masukkan password lama dan password baru untuk mereset password :',
                  style: AppStyles.textBlackColor.copyWith(
                    fontSize: 16,
                    fontWeight: AppStyles.semiBold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: buildPasswordField(
                  controller: _oldPasswordController,
                  labelText: 'Password Lama',
                  obscureText: _obscureOldPassword,
                  onPressedIcon: () {
                    setState(() {
                      _obscureOldPassword = !_obscureOldPassword;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: buildPasswordField(
                  controller: _newPasswordController,
                  labelText: 'Password Baru',
                  obscureText: _obscureNewPassword,
                  onPressedIcon: () {
                    setState(() {
                      _obscureNewPassword = !_obscureNewPassword;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: buildPasswordField(
                  controller: _confirmPasswordController,
                  labelText: 'Ulangi Password Baru',
                  obscureText: _obscureConfirmPassword,
                  onPressedIcon: () {
                    setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    });
                  },
                ),
              ),
              Container(
                width: double
                    .infinity, // Mengatur lebar tombol menjadi sepanjang parent
                margin: EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors
                        .orangeColor, // Mengubah warna tombol menjadi oranye
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    String oldPassword = _oldPasswordController.text;
                    String newPassword = _newPasswordController.text;
                    String confirmPassword = _confirmPasswordController.text;
                  },
                  child: Text('Reset Password'),
                ),
              ),
              Card()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField({
    required TextEditingController controller,
    required String labelText,
    required bool obscureText,
    required VoidCallback onPressedIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: AppColors.orangeColor,
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: obscureText ? Colors.grey : Color(0xffFBA651),
            ),
            onPressed: onPressedIcon,
          ),
        ),
      ),
    );
  }
}
