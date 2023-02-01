import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'preference_manager.dart';

class PreferenceManagerImpl implements PreferenceManager {
  final _preference = const FlutterSecureStorage();

  @override
  Future<String?> getString(String key) {
    return _preference
        .read(key: key)
        .then((value) => value)
        .onError((error, stackTrace) => null);
  }

  @override
  Future<void> setString(String key, String value) {
    return _preference.write(key: key, value: value);
  }

  @override
  Future<int> getInt(String key, {int defaultValue = 0}) async {
    try {
      final value = await _preference.read(key: key);
      return value != null ? int.parse(value) : defaultValue;
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  Future<void> setInt(String key, int value) {
    return _preference.write(key: key, value: value.toString());
  }

  @override
  Future<double> getDouble(String key, {double defaultValue = 0.0}) async {
    try {
      final value = await _preference.read(key: key);
      return value != null ? double.parse(value) : defaultValue;
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  Future<void> setDouble(String key, double value) {
    return _preference.write(key: key, value: value.toString());
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    try {
      final value = await _preference.read(key: key);
      return value != null
          ? bool.fromEnvironment(value, defaultValue: defaultValue)
          : defaultValue;
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  Future<void> setBool(String key, bool value) {
    return _preference.write(key: key, value: value.toString());
  }

  @override
  Future<void> remove(String key) async {
    if (key == AdaptiveTheme.prefKey) {
      _preference.delete(key: key);
    }
  }

  @override
  Future<void> clear() async {
    try {
      final all = await _preference.readAll();

      for (final key in all.keys) {
        if (key != AdaptiveTheme.prefKey) {
          _preference.delete(key: key);
        }
      }
    } catch (_) {}
  }
}
