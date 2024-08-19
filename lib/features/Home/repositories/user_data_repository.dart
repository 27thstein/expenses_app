import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserDataRepository {
  final String apiUrl = 'http://127.0.0.1:8000';
  final storage = const FlutterSecureStorage() ;


  Future<Map<String, dynamic>> fetchUserData(String userId) async {
    final token = await storage.read(key: 'auth_token');
    final userId = await storage.read(
        key: 'user_id'); // Assuming you use this to make specific requests

    if (token == null || userId == null) {
      throw Exception('No user data found in storage');
    }

    final response = await http.get(
      Uri.parse('$apiUrl/api/user/$userId'), // Use user_id if needed
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch user data');
    }
  }
}
