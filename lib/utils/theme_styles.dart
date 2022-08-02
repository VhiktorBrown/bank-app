import 'package:bank_app/utils/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle primaryTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ThemeColors.black,
    fontFamily: 'Raleway'
  );

  static TextStyle seeAll = TextStyle(
      fontSize: 17,
      color: ThemeColors.black,
    fontFamily: 'Raleway'
  );

  static TextStyle cardDetails = const TextStyle(
    fontSize: 17,
    color: Color(0xff66646d),
    fontWeight: FontWeight.w600,
    fontFamily: 'Raleway'
  );

  static TextStyle cardMoney = const TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontFamily: 'Raleway'
  );

  static TextStyle tagText = TextStyle(
      fontStyle: FontStyle.italic,
      color: ThemeColors.black,
      fontWeight: FontWeight.w500
  );
  static TextStyle otherDetailsPrimary = TextStyle(
      fontSize: 16,
      color: ThemeColors.black,
      fontFamily: 'Raleway'
  );

  static TextStyle otherDetailsSecondary = const TextStyle(
    fontSize: 12,
    color: Colors.grey,
    fontFamily: 'Raleway'
  );

}