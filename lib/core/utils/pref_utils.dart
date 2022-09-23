import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:salesforce_app/data/models/boardsList/post_boards_list_resp.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setBoradList(List<Boards>? value) {
    return _sharedPreferences!.setString('BoradList', jsonEncode(value));
  }

  List<Boards>? getBoradList() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('BoradList') ?? '');
      return (jsonData as List).map((e) => Boards.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
