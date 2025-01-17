import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepLightImages {
  static XImagesData get data => XImagesData(
        images: const {
          UKeepImageKey.appLogo: 'assets/images/nasa_logo.svg',
          UKeepImageKey.appWormLogo: 'assets/images/nasa_worm_logo.svg',
        },
      );
}
