// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

// class UKeepThemeData extends ThemeExtension<UKeepThemeData> {
//   final UKeepIconsData icons;
//   // final UKeepTypographyData typography;
//   final UKeepRadiusData radius;
//   final UKeepSpacingsData spacings;
//   final UKeepBoxShadowsData boxShadows;
//   final UKeepDurationsData durations;
//   final UKeepImagesData images;
//   final UKeepAppFormFactor formFactor;
//   final TargetPlatform? _platform;
//   TargetPlatform get platform => _platform ?? defaultTargetPlatform;

//   UKeepThemeData({
//     final UKeepIconsData? icons,
//     // final UKeepTypographyData? typography,
//     final UKeepRadiusData? radius,
//     final UKeepSpacingsData? spacings,
//     final UKeepBoxShadowsData? boxShadows,
//     final UKeepDurationsData? durations,
//     final UKeepImagesData? images,
//     final UKeepAppFormFactor? formFactor,
//     final TargetPlatform? platform,
//   })  : _platform = platform,
//         formFactor = UKeepAppFormFactor.medium,
//         icons = UKeepIconsData(),
//         // typography = UKeepTypographyData.regular(),
//         radius = const UKeepRadiusData(),
//         spacings = const UKeepSpacingsData(),
//         boxShadows = const UKeepBoxShadowsData(),
//         durations = const UKeepDurationsData(),
//         images = const UKeepImagesData();

//   @override
//   UKeepThemeData copyWith({
//     UKeepIconsData? icons,
//     // UKeepTypographyData? typography,
//     UKeepRadiusData? radius,
//     UKeepSpacingsData? spacings,
//     UKeepBoxShadowsData? boxShadows,
//     UKeepDurationsData? durations,
//     UKeepImagesData? images,
//     UKeepAppFormFactor? formFactor,
//     TargetPlatform? platform,
//   }) {
//     return UKeepThemeData(
//       icons: icons ?? this.icons,
//       // typography: typography ?? this.typography,
//       radius: radius ?? this.radius,
//       spacings: spacings ?? this.spacings,
//       boxShadows: boxShadows ?? this.boxShadows,
//       durations: durations ?? this.durations,
//       images: images ?? this.images,
//       formFactor: formFactor ?? this.formFactor,
//       platform: platform ?? this.platform,
//     );
//   }

//   @override
//   UKeepThemeData lerp(ThemeExtension<UKeepThemeData>? other, double t) {
//     if (other is! UKeepThemeData) {
//       return this;
//     }

//     return UKeepThemeData(
//       formFactor: t < 0.5 ? formFactor : other.formFactor,
//       platform: platform,
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is UKeepThemeData &&
//           runtimeType == other.runtimeType &&
//           platform == other.platform &&
//           icons == other.icons &&
//           // typography == other.typography &&
//           radius == other.radius &&
//           spacings == other.spacings &&
//           boxShadows == other.boxShadows &&
//           durations == other.durations &&
//           formFactor == other.formFactor &&
//           images == other.images;

//   @override
//   int get hashCode =>
//       platform.hashCode ^
//       icons.hashCode ^
//       // typography.hashCode ^
//       radius.hashCode ^
//       spacings.hashCode ^
//       boxShadows.hashCode ^
//       durations.hashCode ^
//       formFactor.hashCode ^
//       images.hashCode;

//   UKeepThemeData withFormFactor(UKeepAppFormFactor formFactor) {
//     return UKeepThemeData(
//       formFactor: formFactor,
//     );
//   }

//   UKeepThemeData withTypography(UKeepTypographyData typography) {
//     return UKeepThemeData(
//       platform: platform,
//       formFactor: formFactor,
//       durations: durations,
//       icons: icons,
//       images: images,
//       radius: radius,
//       boxShadows: boxShadows,
//       spacings: spacings,
//       // typography: typography,
//     );
//   }
// }
