import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle globalTextStyle({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  double lineHeight = 1,
  Color color = Colors.black,
  TextDecoration? decoration,
  Color? decorationColor,
  List<Shadow>? shadows
}) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: lineHeight,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    shadows: shadows,
  );
}

TextStyle poppinsStyle({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  double lineHeight = 1,
  Color color = Colors.black,
  TextDecoration? decoration,
  Color? decorationColor,
  List<Shadow>? shadows
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: lineHeight,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    shadows: shadows,
  );
}

TextStyle interStyle({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  double lineHeight = 1,
  Color color = Colors.black,
  TextDecoration? decoration,
  Color? decorationColor,
  List<Shadow>? shadows
}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: lineHeight,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    shadows: shadows,
  );
}
