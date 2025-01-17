import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

abstract final class UKeepDarkTheme {
  static ThemeData data(XFormFactor? formFactor) {
    return ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        UKeepLightAssets.data,
        UKeepMetrics.data(formFactor),
      ],
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: UKeepTextTheme.data(formFactor),
      colorScheme: UKeepDarkColorScheme.data,
      elevatedButtonTheme: UKeepDarkElevatedButtonTheme.data,
      // elevatedButtonTheme: // `TODO`: CHATGPT HELP ME CREATIG THIS MUST COMPLEX THAT WE CAN DO
    );
  }
}
