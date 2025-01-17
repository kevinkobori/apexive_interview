// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

// class UKeepGap extends StatelessWidget {
//   final XSpacing spacing;

//   const UKeepGap(
//     this.spacing, {
//     super.key,
//   });

//   const UKeepGap.none({
//     super.key,
//   }) : spacing = XSpacing.none;

//   const UKeepGap.extraSmall({
//     super.key,
//   }) : spacing = XSpacing.extraSmall;

//   const UKeepGap.small({
//     super.key,
//   }) : spacing = XSpacing.small;

//   const UKeepGap.semiSmall({
//     super.key,
//   }) : spacing = XSpacing.semiSmall;

//   UKeepGap.large({
//     super.key,
//   }) : spacing = metrics.xSpacings.large;

//   const UKeepGap.extraLarge({
//     super.key,
//   }) : spacing = XSpacing.extraLarge;

//   const UKeepGap.superLarge({
//     super.key,
//   }) : spacing = XSpacing.superLarge;

//   @override
//   Widget build(BuildContext context) {
//     final metrics = Theme.of(context).extension<UKeepThemeData>()!;

//     return Gap(spacing.toDouble(metrics));
//   }
// }
