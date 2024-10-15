class User {
  User({required this.id, required this.name, required this.age, required this.height});
  int id;
  String name;
  int age;
  double height;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height']
    );
  }

  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}