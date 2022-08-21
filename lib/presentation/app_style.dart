import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color backgroundColor = const Color(0xFFE2E2FF);
  static Color primaryColor = const Color(0xFF000633);
  static Color secondaryColor = const Color(0xFF0065FF);

  static List<Color> cardsColors = <Color>[
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100,
  ];

  static TextStyle titleStyle =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle contentStyle =
      GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal);

  static TextStyle dateStyle =
      GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.bold);
}
