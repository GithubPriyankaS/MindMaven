import 'package:flutter/material.dart';
import 'logo_page.dart';
import 'landing_page.dart';
import 'signin_page.dart';
import 'signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'MindMaven',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black, // Default background black
      ),
      // First page that loads
      initialRoute: '/logo',
      routes: {
        '/logo': (context) => const LogoPage(),
        '/landing': (context) => const LandingPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}
