import 'package:flutter/material.dart';
import 'package:mobile_app_pos/core/theme/theme.dart';
import 'package:mobile_app_pos/features/auth/presentation/pages/signup_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:AppTheme.darkThemeMode,
      // Added the 'title' parameter back to HomePage's constructor call
      home: const SignupPage(),
    );
  }
}
