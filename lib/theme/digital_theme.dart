import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData digitalTheme(BuildContext context) {
  final TextTheme textTheme = Theme.of(context).textTheme;

  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: GoogleFonts.vt323TextTheme(textTheme).copyWith(
      bodyText1: GoogleFonts.oswald(textStyle: textTheme.bodyText1?.copyWith(fontSize: 24)),
    ),
  );
}
