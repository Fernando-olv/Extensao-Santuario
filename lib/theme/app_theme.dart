import 'package:flutter/material.dart';

import 'app_tokens.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppTokens.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppTokens.primaryButton,
        primary: AppTokens.primaryButton,
        surface: AppTokens.background,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 32,
          color: AppTokens.headerGreen,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          fontSize: 28,
          color: AppTokens.headerGreen,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppTokens.bodyText,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppTokens.bodyText,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 11,
          color: AppTokens.bodyText,
          fontWeight: FontWeight.w400,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppTokens.fieldBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTokens.radiusSm),
          borderSide: const BorderSide(color: Color(0xFF757575)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTokens.radiusSm),
          borderSide: const BorderSide(color: Color(0xFF757575)),
        ),
      ),
    );
  }
}
