import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mvvn/style/app_colors.dart';

class AppStyle {
  static TextStyle roboto12black() => GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black);

  static TextStyle robots12light() => GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.lightColor);

  static TextStyle poppins22White() => GoogleFonts.poppins(
      fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF242424));
}
