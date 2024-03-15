import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(fixedSize: const Size(395, 55)),
        child: Text('Sign Up',
            style: GoogleFonts.manrope(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
