import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

abstract final class UKeepLightTheme {
  static ThemeData data(XFormFactor? formFactor) {
    return ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        UKeepLightAssets.data,
        UKeepMetrics.data(formFactor),
      ],
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: UKeepTextTheme.data(formFactor),
      colorScheme: UKeepLightColorScheme.data,
      elevatedButtonTheme: UKeepLightElevatedButtonTheme.data,
    );
  }
}
