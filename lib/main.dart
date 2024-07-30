// import 'package:firebase_core/firebase_core.dart';
import 'package:expenses_app/features/Auth/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  final authRepository = AuthRepository(baseUrl: 'http://127.0.0.1:8000');
  const secureStorage = FlutterSecureStorage();
  final token = await secureStorage.read(key: 'auth_token');

  runApp(MyApp(
      authRepository: authRepository,
      secureStorage: secureStorage,
      isLoggedIn: token != null));
}
