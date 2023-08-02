import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa_rentalcam/dashboard_screen.dart';

class verifikasi extends StatefulWidget {
  @override
  _verifikasiState createState() => _verifikasiState();
}

class _verifikasiState extends State<verifikasi> {
  List<TextEditingController> _otpControllers = List.generate(
    6,
    (_) => TextEditingController(text: ""),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Image.asset("assets/images/back.png"),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DashboardScreen()));
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Verifikasi Nomor Telepon',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Masukkan Kode OTP',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              _buildOtpInputs(),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _verifyOtp,
                child: Text('Verifikasi'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpInputs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        6,
        (index) => Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            controller: _otpControllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            showCursor: false,
            cursorColor: Colors.transparent,
            onChanged: (value) {
              if (value.length == 1 && index < 5) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }

  void _verifyOtp() {
    String otp = _otpControllers.map((controller) => controller.text).join();

    print('Entered OTP: $otp');
  }
}
