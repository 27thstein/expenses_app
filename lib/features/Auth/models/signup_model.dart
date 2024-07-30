class SignUpModel {
  final String name;
  final String email;
  final String password;

  SignUpModel({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'SignUpModel{name: $name, email: $email, password: $password}';
  }
}
