import '6-password.dart';

class User extends Password {
  final int id;
  String name;
  int age;
  double height;
  String _user_password = '';

  User({required this.id, required this.name, required this.age, required this.height, String? user_password})
      : _user_password = user_password ?? '',
        super(password: user_password);

  String get user_password => _user_password;

  set user_password(String? value) {
    _user_password = value ?? '';
    // pass to Password class (parent) and validate
    password = _user_password;
    isValid();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: (userJson['id'] as int?) ?? 0,
      name: (userJson['name'] as String?) ?? '',
      age: (userJson['age'] as int?) ?? 0,
      height: (userJson['height'] as num?)?.toDouble() ?? 0.0,
      user_password: (userJson['user_password'] as String?) ?? '',
    );
  }

  @override
  String toString() => 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
}
