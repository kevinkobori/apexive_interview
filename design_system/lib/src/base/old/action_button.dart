// import 'package:flutter/material.dart';
// import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';
// import 'package:tap_builder/tap_builder.dart';

// class UKeepActionButton extends StatelessWidget {
//   const UKeepActionButton({
//     required this.icon,
//     super.key,
//     this.onTap,
//   });

//   final String icon;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return TapBuilder(
//       onTap: onTap,
//       builder: (context, state, hasFocus) {
//         switch (state) {
//           case TapState.hover:
//             return UKeepActionButtonLayout.hovered(icon: icon);
//           case TapState.pressed:
//             return UKeepActionButtonLayout.pressed(icon: icon);
//           default:
//             return UKeepActionButtonLayout.inactive(icon: icon);
//         }
//       },
//     );
//   }
// }

// class UKeepActionButtonLayout extends StatelessWidget {
//   const UKeepActionButtonLayout.inactive({
//     required this.icon,
//     super.key,
//   }) : _state = UKeepTextButtonState.inactive;

//   const UKeepActionButtonLayout.hovered({
//     required this.icon,
//     super.key,
//   }) : _state = UKeepTextButtonState.hovered;

//   const UKeepActionButtonLayout.pressed({
//     required this.icon,
//     super.key,
//   }) : _state = UKeepTextButtonState.pressed;

//   final String icon;
//   final UKeepTextButtonState _state;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     switch (_state) {
//       case UKeepTextButtonState.hovered:
//         return UKeepTextButtonLayout.hovered(
//           icon: icon,
//           hoveredBackgroundColor: colorScheme.onPrimary.withOpacity(0.15),
//         );
//       case UKeepTextButtonState.pressed:
//         return UKeepTextButtonLayout.pressed(
//           icon: icon,
//           pressedBackgroundColor: colorScheme.onPrimary.withOpacity(0.20),
//         );
//       case UKeepTextButtonState.inactive:
//         return UKeepTextButtonLayout.inactive(
//           icon: icon,
//           inactiveBackgroundColor: colorScheme.onPrimary.withOpacity(0),
//         );
//     }
//   }
// }
