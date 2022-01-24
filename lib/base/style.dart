import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuncie_mobile/base/constans.dart';

class S {
  static const text = _Text();
}

class _Text {
  const _Text();

  TextStyle get caption => TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: C.string.roboto,
      );

  TextStyle get heading1 => const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Colors.white,
      );
  TextStyle get heading2 => heading1.copyWith(fontSize: 18);

  TextStyle get heading3 => heading1.copyWith(fontSize: 14);
  TextStyle get heading4 => heading1.copyWith(fontSize: 10);

  TextStyle get body2 => TextStyle(
        fontFamily: C.string.roboto,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  TextStyle get body1 => TextStyle(
        fontFamily: C.string.roboto,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      );

  TextStyle get subtitle2 => body1.copyWith(
        color: Colors.white,
      );
}
