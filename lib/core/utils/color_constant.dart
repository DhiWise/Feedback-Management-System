import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray900 = fromHex('#262b35');

  static Color bluegray700 = fromHex('#424c5d');

  static Color bluegray50 = fromHex('#eaecf0');

  static Color gray500 = fromHex('#aaaaaa');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color deepOrange300 = fromHex('#ff7a59');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray300 = fromHex('#dddddd');

  static Color gray50 = fromHex('#f8f9fa');

  static Color blue10= fromHex('#0047AB');
  
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
