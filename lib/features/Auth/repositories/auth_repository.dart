import 'dart:convert';
import 'package:expenses_app/features/Auth/models/login_model.dart';
import 'package:expenses_app/features/Auth/models/signup_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  final String baseUrl;
  final secureStorage = const FlutterSecureStorage();

  AuthRepository({required this.baseUrl});

  Future<void> login(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(loginModel.toJson()),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final String token = data['access_token'];
      final String userId = data['user_id'].toString(); // Convert int to string

      // Store token and user ID securely
      await secureStorage.write(key: 'auth_token', value: token);
      await secureStorage.write(key: 'user_id', value: userId);
    } else if (response.statusCode == 401) {
      final responseData = jsonDecode(response.body);
      final error = responseData['message'];
      throw Exception(error);
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  }

  Future<String> signUp(SignUpModel signUpModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/register'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        signUpModel.toJson(),
      ), // Ensure secure encoding
    );

    if (response.statusCode == 201) {
      final responseData = json.decode(response.body);
      final accessToken = responseData['access_token'];
      // Store the token securely
      return accessToken;
    } else if (response.statusCode == 401) {
      final responseData = json.decode(response.body);
      final error = responseData['message'];
      throw error;
    } else {
      throw Exception('An Error Occured');
    }
  }

  final storage = const FlutterSecureStorage();

  Future<String?> getToken() async {
    return await storage.read(key: 'auth_token');
  }

  Future<String> fetchUserData() async {
    final token = await storage.read(key: 'auth_token');
    final response = await http.get(Uri.parse('$baseUrl/api/getUserInfo'),
        headers: {'Authorization': 'Bearer $token'});
        return response.body;
  }

  Future<void> deleteToken() async {
    await storage.delete(key: 'auth_token');
  }
}
