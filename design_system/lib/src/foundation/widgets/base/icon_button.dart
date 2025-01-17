import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepIconButton extends IconButton {
  const UKeepIconButton({
    required UKeepIcon icon,
    required super.onPressed,
    super.key,
  }) : super(icon: icon);
}
