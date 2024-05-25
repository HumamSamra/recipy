import 'package:shared_preferences/shared_preferences.dart';

abstract class StorageKeys {
  static const themeMode = "THEME_MODE";
}

class StorageService {
  final SharedPreferences _prefs;

  StorageService(this._prefs);

  static Future<StorageService> init() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return StorageService(prefs);
    } catch (err) {
      rethrow;
    }
  }

  void set(String key, dynamic value) {
    if (value is bool) {
      _prefs.setBool(key, value);
    } else if (value is int) {
      _prefs.setInt(key, value);
    } else if (value is double) {
      _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      _prefs.setStringList(key, value);
    } else {
      _prefs.setString(key, value.toString());
    }
  }

  Future<void> setAsync(String key, dynamic value) async {
    if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      await _prefs.setString(key, value.toString());
    }
  }

  dynamic get(String key) {
    return _prefs.get(key);
  }

  dynamic getTyped<T>(String key) {
    if (T is bool) {
      return _prefs.getBool(key);
    } else if (T is int) {
      return _prefs.getInt(key);
    } else if (T is double) {
      return _prefs.getDouble(key);
    } else if (T is List<String>) {
      return _prefs.getStringList(key);
    } else {
      return _prefs.getString(key);
    }
  }
}
