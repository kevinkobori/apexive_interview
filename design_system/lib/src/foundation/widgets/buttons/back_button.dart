import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepBackButton extends StatelessWidget {
  const UKeepBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = Theme.of(context).extension<XAssetsData>()!;

    return UKeepIconButton(
      icon: UKeepIcon.regular(
        assets.icons.characters.char(UKeepIconCharacterKey.arrowBack),
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
