class Password {
  String _password = '';

  Password({String? password}) : _password = password ?? '';

  String get password => _password;

  set password(String? value) => _password = value ?? '';

  bool isValid() {
    final pwd = _password ?? '';
    final len = pwd.length;
    if (len < 8 || len > 16) return false;

    final hasUpper = RegExp(r'[A-Z]').hasMatch(pwd);
    final hasLower = RegExp(r'[a-z]').hasMatch(pwd);
    final hasDigit = RegExp(r'\d').hasMatch(pwd);

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() => 'Your Password is: ${_password ?? ''}';
}
