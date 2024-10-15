import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  Map dataMap = jsonDecode(data);
  return dataMap['id'];
}