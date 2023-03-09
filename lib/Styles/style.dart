import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// Colors
Color grayish = HexColor('#F7F7F7');
Color deepGrayish = HexColor('#F3F3F4');
Color blackish = HexColor('#5C4D46');
Color orangish = HexColor('#E67817');
Color greenish = HexColor('#4DC561');
Color bluish = HexColor('#349AEF');

// Text
TextStyle thinText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: grayish,
  fontWeight: FontWeight.w100,
);

TextStyle lightText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: grayish,
  fontWeight: FontWeight.w200,
);

TextStyle regularText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: deepGrayish,
  fontWeight: FontWeight.w300,
);

TextStyle mediumText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: deepGrayish,
  fontWeight: FontWeight.w400,
);

TextStyle boldText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: blackish,
  fontWeight: FontWeight.w600,
);

TextStyle blackText = GoogleFonts.roboto(
  fontSize: 14.0,
  color: blackish,
  fontWeight: FontWeight.bold,
);
