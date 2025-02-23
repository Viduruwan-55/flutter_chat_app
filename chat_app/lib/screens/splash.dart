import 'dart:async';

import 'package:chat_app/screens/auth/signing_screen.dart';
import 'package:chat_app/utils/navigation/coustom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      CustomedNavigation.nextScreen(context, const Signingscreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.chat,
              size: 100.0,
              color: Colors.deepPurple,
            ),
            Text(
              'Chatty',
              style: GoogleFonts.iceland(
                  color: Color.fromARGB(255, 51, 49, 49),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
