import 'package:calc/core/secrets/supabase_secrets.dart';
import 'package:calc/core/theme/theme.dart';
import 'package:calc/features/auth/presentation/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );
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
        home: const LoginPage());
  }
}
