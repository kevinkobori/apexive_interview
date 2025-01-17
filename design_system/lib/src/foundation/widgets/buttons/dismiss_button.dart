import 'package:flutter/material.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepDismissButton extends StatelessWidget {
  final VoidCallback? onClose;

  const UKeepDismissButton({
    super.key,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final assets = Theme.of(context).extension<XAssetsData>()!;

    return UKeepIconButton(
      icon: UKeepIcon.regular(
        assets.icons.characters.char(UKeepIconCharacterKey.dismiss),
      ),
      onPressed: onClose,
    );
  }
}
