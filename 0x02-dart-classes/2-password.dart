class Password {
  String password = '';

  bool isValid() {
    if (password == '') return false;
    if (password.length < 8 || password.length > 16) return false;
    if ((!password.contains(new RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])')))) return false; //|| (!password.contains(new RegExp(r'[a-z]'))) || (!password.contains(new RegExp(r'[0-9]')))) return false;
    return true;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Your Password is: ${password}';
  }
}