class User {
  User({required this.name, required this.age, required this.height});
  String name;
  int age;
  double height;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height
    };
  }
}