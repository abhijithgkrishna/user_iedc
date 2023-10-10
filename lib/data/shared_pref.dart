import 'package:shared_preferences/shared_preferences.dart';

Future<String?> sharedPreferencesFunction() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var bookingId = await prefs.getString("bookingId");
    return bookingId;
  }