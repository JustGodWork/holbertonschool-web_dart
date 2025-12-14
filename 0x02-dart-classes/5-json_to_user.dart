class User {
  final int id;
  final String name;
  final int age;
  final double height;

  User({required this.id, required this.name, required this.age, required this.height});

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
      id: userJson['id'] as int,
      name: userJson['name'] as String,
      age: userJson['age'] as int,
      height: (userJson['height'] as num).toDouble(),
    );
  }

  @override
  String toString() => 'User(id : $id ,name: $name, age: $age, height: $height)';
}
