import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

import 'base.dart';

part 'colors.dart';
part 'icons.dart';
part 'radius.dart';
part 'shadows.dart';
part 'spacing.dart';
part 'typography.dart';

class UKeepThemeLibrary extends StatelessWidget {
  const UKeepThemeLibrary({
    required this.themeMode,
    required this.formFactor,
    super.key,
  });

  final ThemeMode themeMode;
  final XFormFactor formFactor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UKeepAppBuilder(
        // appLogo: '<svg></svg>',
        // appWormLogo: '<svg></svg>',
        themeMode: themeMode,
        formFactor: formFactor,
        child: Builder(
          builder: (context) {
            return ThemeContainer(
              title: 'UKeep Theme : ${formFactor.name} - ${themeMode.name}',
              sections: [
                // colors(context),
                // typography(context),
                icons(context),
                radius(context),
                spacing(context),
                shadow(context),
              ],
            );
          },
        ),
      ),
    );
  }
}
