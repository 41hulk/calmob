import 'package:calc/core/theme/theme.dart';
import 'package:calc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:calc/features/auth/presentation/pages/signup_page.dart';
import 'package:calc/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await initDependencies();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => serviceLocator<AuthBloc>(),
      )
    ],
    child: const MyApp(),
  ));
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
