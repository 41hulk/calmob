import 'package:calc/core/theme/app_pallete.dart';
import 'package:calc/features/auth/presentation/widgets/auth_field.dart';
import 'package:calc/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "signup",
              style: GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            AuthField(
              hintText: 'name',
              controller: nameController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: 'email',
              controller: emailController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthField(
              hintText: 'password',
              controller: passwordController,
            ),
            const SizedBox(
              height: 15,
            ),
            AuthGradientButton(),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
