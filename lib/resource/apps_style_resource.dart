// apps style

import 'package:inventory_system/apps_common_libs.dart';

class AppsStylesResource {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    final Color brownshade50 = Colors.brown.shade50;

    return ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: isDarkTheme
              ? const Color.fromRGBO(31, 31, 31, 12)
              : const Color(0xffff735c),
          titleTextStyle: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, color: brownshade50),
          elevation: 6.0,
        ),
        scaffoldBackgroundColor:
            isDarkTheme ? const Color.fromRGBO(18, 18, 18, 7) : Colors.white,
        cardColor: isDarkTheme
            ? const Color.fromRGBO(30, 30, 30, 12)
            : Colors.grey.shade200,
        primaryColor: isDarkTheme ? brownshade50 : const Color(0xffff735c),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 57,
              letterSpacing: 0),
          displayMedium: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 45,
              letterSpacing: 0),
          displaySmall: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 36,
              letterSpacing: 0),
          headlineLarge: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 32,
              letterSpacing: 0),
          headlineMedium: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 28,
              letterSpacing: 0),
          headlineSmall: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 24,
              letterSpacing: 0),
          titleLarge: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 22,
              letterSpacing: 0),
          titleMedium: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 16,
              letterSpacing: 0.15),
          titleSmall: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 14,
              letterSpacing: 0.1),
          labelLarge: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 14,
              letterSpacing: 0.1),
          labelMedium: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 12,
              letterSpacing: 0.5),
          labelSmall: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 11,
              letterSpacing: 0.5),
          bodyLarge: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 16,
              letterSpacing: 0.15),
          bodyMedium: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 14,
              letterSpacing: 0.25),
          bodySmall: GoogleFonts.poppins(
              color: isDarkTheme ? brownshade50 : Colors.black,
              fontSize: 12,
              letterSpacing: 0.4),
        ));
  }
}
