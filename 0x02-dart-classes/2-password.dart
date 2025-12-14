class Password {
  String password = '';

  bool isValid() {
    final len = password.length;
    if (len < 8 || len > 16) return false;

    final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    final hasLower = RegExp(r'[a-z]').hasMatch(password);
    final hasDigit = RegExp(r'\d').hasMatch(password);

    return hasUpper && hasLower && hasDigit;
  }

  @override
  String toString() => 'Your Password is: $password';
}
