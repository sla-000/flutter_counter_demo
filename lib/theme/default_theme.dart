import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
    );

TextStyle labelTextStyle(BuildContext context) => GoogleFonts.vt323(
      fontSize: 42,
      textStyle: Theme.of(context).textTheme.headline4,
    );
