import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mvvn/style/app_colors.dart';
import 'package:todo_mvvn/style/text_style.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.lightColor,
      scaffoldBackgroundColor: AppColors.lightGreenColor,
      // colorScheme: ColorScheme(
      //     brightness: Brightness.light,
      //     primary: lightColor,
      //     onPrimary: Colors.black54,
      //     secondary: Color(0xFFB7935F),
      //     onSecondary: Colors.black,
      //     error: Colors.red,
      //     onError: Colors.white,
      //     background: Colors.transparent,
      //     onBackground: lightColor,
      //     surface: Colors.white,
      //     onSurface: Colors.black),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: AppStyle.robots12light(),
          titleSmall: AppStyle.poppins22White(),
          bodySmall: AppStyle.roboto12black()),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: AppColors.lightColor,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightColor,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          centerTitle: false));
// static ThemeData darkTheme = ThemeData(
//     primaryColor: darkColor,
//     scaffoldBackgroundColor: Colors.transparent,
//     colorScheme: ColorScheme(
//         brightness: Brightness.dark,
//         primary: darkColor,
//         onPrimary: yellowColor,
//         secondary: darkColor,
//         onSecondary: Colors.white,
//         error: Colors.red,
//         onError: Colors.white,
//         background: Colors.transparent,
//         onBackground: yellowColor,
//         surface: Colors.white,
//         onSurface: darkColor),
//     textTheme: TextTheme(
//         bodyLarge: GoogleFonts.elMessiri(
//             fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//         bodyMedium: GoogleFonts.elMessiri(
//             fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
//         titleSmall: GoogleFonts.elMessiri(
//             fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
//         bodySmall: GoogleFonts.elMessiri(
//             fontSize: 20, fontWeight: FontWeight.w300, color: yellowColor)),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: darkColor,
//         type: BottomNavigationBarType.shifting,
//         unselectedItemColor: Colors.white,
//         selectedItemColor: yellowColor,
//         selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
//         unselectedLabelStyle: GoogleFonts.quicksand(
//           fontSize: 12,
//         )),
//     appBarTheme: AppBarTheme(
//         backgroundColor: Colors.transparent,
//         iconTheme: IconThemeData(color: Colors.white, size: 30),
//         elevation: 0.0,
//         centerTitle: true));
}
