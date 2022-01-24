import 'package:flutter/material.dart';

class C {
  static const color = _Color();
  static const number = _Num();
  static const string = _String();
}

class _Color {
  const _Color();

  final revolver = const Color(0xff2C1A32);
  final blackcurrant = const Color(0xff413147);
  final rajah = const Color(0xffF5C577);
  final graySuit = const Color(0xffD5D1D6);
  final jellyBean = const Color(0xff2A88AA);
  final saltBox = const Color(0xff6B5F6F);
  final burntSienna = const Color(0xffF07A5A);
  final cinder = const Color(0xff09050A);
  final tuna = const Color(0xff373345);
  final concrete = const Color(0xffF2F2F2);
  final athensGray = const Color(0xffEEEEF1);
  final mineShaft = const Color(0xff333333);
  final mercury = const Color(0xffE5E5E5);
  final doveGray = const Color(0xff666666);
}

class _Num {
  const _Num();
  double get heightBottomMenu => 98;
}

class _String {
  const _String();
  String get defaultFontFamily => poppins;
  String get roboto => "Roboto";
  String get poppins => "Poppins";
}
