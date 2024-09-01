import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  // Private constructor

  // Singleton instance
  static late SharedPreferences _instance;

  // SharedPreferences instance

  // Initialize SharedPreferences
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  // Method to get SharedPreferences instance

  // Method to save a string
  static setBool(String key, bool value) async {
    return await _instance.setBool(key, value) ;
  }

  // Method to get a string
  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }

// Other SharedPreferences methods can be added similarly
}
