import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    String user = await fetchUserData();
    Map userMap = jsonDecode(user);
    return 'Hello ${userMap['username']}';
  } catch(error) {
    return 'error caught: $error';
  }
}


Future<String> loginUser() async {
  try {
    bool validCredential = await checkCredentials();
    if (validCredential) {
      print ('There is a user: true');
      return (await greetUser());
    } else {
      print ('There is a user: false');
      return 'Wrong credentials';
    }
  } catch(error) {
    return 'error caught: $error';
  }
}