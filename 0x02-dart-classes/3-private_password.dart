class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    final len = _password.length;
    if (len < 8 || len > 16) return false;

    final hasUpper = RegExp(r'[A-Z]').hasMatch(_password);
    final hasLower = RegExp(r'[a-z]').hasMatch(_password);
    final hasDigit = RegExp(r'\d').hasMatch(_password);

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() => 'Your Password is: $_password';
}
