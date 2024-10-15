class Password {
  String? _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password == '') return false;
    if (_password!.length < 8 || _password!.length > 16) return false;
    if ((!_password!.contains(new RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])')))) return false; //|| (!password.contains(new RegExp(r'[a-z]'))) || (!password.contains(new RegExp(r'[0-9]')))) return false;
    return true;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Your Password is: ${_password}';
  }

  String get password {
    return _password ?? 'not set';
  }

  void set password(String input) {
    this._password = input;
  }
}