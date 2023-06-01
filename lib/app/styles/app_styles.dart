import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle textBlackColor = GoogleFonts.poppins(
    color: AppColors.blackColor,
  );

  static TextStyle textGrey2Color = GoogleFonts.poppins(
    color: AppColors.grey2Color,
  );

  static TextStyle textBlackSemiBold = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textBlackReguler = GoogleFonts.poppins(
    color: AppColors.blackColor,
    fontWeight: semiBold,
  );

  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight reguler = FontWeight.w400;
}
