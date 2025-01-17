import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localstorage/localstorage.dart';

class UKeepCachedNetworkImageProvider extends CachedNetworkImageProvider {
  UKeepCachedNetworkImageProvider(super.url);
}

class UKeepLocalStorage {
  final LocalStorage _localStorage;

  factory UKeepLocalStorage(String key,
      [String? path, Map<String, dynamic>? initialData]) {
    return UKeepLocalStorage._(LocalStorage(key, path, initialData));
  }

  UKeepLocalStorage._(this._localStorage);

  dynamic getItem(String key) => _localStorage.getItem(key);

  Future<void> setItem(String key, dynamic value) =>
      _localStorage.setItem(key, value);

  Future<void> deleteItem(String key) => _localStorage.deleteItem(key);

  Future<void> clear() => _localStorage.clear();
}

class UKeepSvgPicture extends SvgPicture {
  UKeepSvgPicture.asset(super.assetName) : super.asset();
}
