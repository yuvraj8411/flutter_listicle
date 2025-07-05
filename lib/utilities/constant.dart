import 'package:flutter/material.dart';

class AppColors {
  static const blue = Color(0xFF4F63AC);
  static const orange = Color(0xFFFCA34D);
  static const grey = Color(0xFF8D9BB5);
  static const lightGrey = Color(0xFFDADADA);
  static const darkGrey = Color(0xFF3F4A59);
  static const white = Colors.white;
  static const black = Colors.black87;
}

class AppTextStyles {
  static var splashYellowTitle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.orange,
  ).copyWith(
    decoration: TextDecoration.underline,
  );

  static const splashBlackTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const body = TextStyle(
    fontSize: 16,
    color: AppColors.darkGrey,
  );
}
