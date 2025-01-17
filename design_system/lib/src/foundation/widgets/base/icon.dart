import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

enum UKeepIconSize {
  extraSmall,
  medium,
  semiLarge,
}

extension UKeepIconSizeExtension on XIconSizesData {
  // TODO: NOW - PUT ALL SIZES HERE
  double resolve(UKeepIconSize size) {
    switch (size) {
      case UKeepIconSize.extraSmall:
        return extraSmall;
      case UKeepIconSize.medium:
        return medium;
      case UKeepIconSize.semiLarge:
        return semiLarge;
    }
  }
}

class UKeepIcon extends StatelessWidget {
  const UKeepIcon(
    this.data, {
    super.key,
    this.color,
    this.size = UKeepIconSize.medium,
  });

  const UKeepIcon.small(
    this.data, {
    super.key,
    this.color,
  }) : size = UKeepIconSize.extraSmall;

  const UKeepIcon.regular(
    this.data, {
    super.key,
    this.color,
  }) : size = UKeepIconSize.medium;

  const UKeepIcon.big(
    this.data, {
    super.key,
    this.color,
  }) : size = UKeepIconSize.semiLarge;

  final String data;
  final Color? color;
  final UKeepIconSize size;

  @override
  Widget build(BuildContext context) {
    final assets = Theme.of(context).extension<XAssetsData>()!;
    final colorScheme = Theme.of(context).colorScheme;
    final color = this.color ?? colorScheme.onSurface;

    return Text(
      data,
      style: TextStyle(
        fontFamily: assets.icons.fontFamily,
        package: assets.icons.fontPackage,
        color: color,
        fontSize: assets.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class UKeepAnimatedIcon extends StatelessWidget {
  const UKeepAnimatedIcon(
    this.data, {
    super.key,
    this.color,
    this.size = UKeepIconSize.extraSmall,
    this.duration = const Duration(milliseconds: 200),
  });

  final String data;
  final Color? color;
  final UKeepIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final assets = Theme.of(context).extension<XAssetsData>()!;
    final colorScheme = Theme.of(context).colorScheme;
    final color = this.color ?? colorScheme.onSurface;

    if (!isAnimated) {
      return UKeepIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    }

    return AnimatedDefaultTextStyle(
      style: TextStyle(
        fontFamily: assets.icons.fontFamily,
        package: assets.icons.fontPackage,
        color: color,
        fontSize: assets.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
      duration: duration,
      child: Text(data),
    );
  }
}
