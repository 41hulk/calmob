import 'package:calc/core/theme/theme.dart';
import 'package:calc/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'quiz app',
        theme: AppTheme.darkThemeMode,
        home: const SignUpPage());
  }
}
