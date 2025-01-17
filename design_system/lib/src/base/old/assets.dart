// import 'package:flutter/material.dart';
// import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

// class XAssetsData extends ThemeExtension<XAssetsData> {
//   final UKeepIconsData icons;
//   final UKeepImagesData images;

//   XAssetsData({
//     final UKeepIconsData? icons,
//     final UKeepImagesData? images,
//   })  : icons = UKeepIconsData(),
//         images = const UKeepImagesData();

//   @override
//   XAssetsData copyWith({
//     UKeepIconsData? icons,
//     UKeepImagesData? images,
//   }) {
//     return XAssetsData(
//       icons: icons ?? this.icons,
//       images: images ?? this.images,
//     );
//   }

//   @override
//   XAssetsData lerp(ThemeExtension<XAssetsData>? other, double t) {
//     if (other is! XAssetsData) {
//       return this;
//     }

//     return XAssetsData();
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is XAssetsData &&
//           icons == other.icons &&
//           images == other.images &&
//           runtimeType == other.runtimeType;

//   @override
//   int get hashCode => icons.hashCode ^ images.hashCode;
// }
