class LoginModel {
  final String email;
  final String password;

  LoginModel({required this.email, required this.password});

 Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return ' LoginModel{email: $email, password: $password}';
  }
}
