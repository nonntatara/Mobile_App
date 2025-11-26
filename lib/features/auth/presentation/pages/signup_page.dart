import 'package:flutter/material.dart';
import 'package:mobile_app_pos/core/theme/app_pallete.dart';
import 'package:mobile_app_pos/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:mobile_app_pos/features/auth/presentation/widgets/auth_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    formKey.currentState?.validate();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              AuthField(hintText: 'Name'),
              const SizedBox(height: 10),
              AuthField(hintText: 'Gmail'),
              const SizedBox(height: 10),
              AuthField(hintText: 'Password'),
              const SizedBox(height: 15),
              AuthGradientButton(),
              const SizedBox(height: 25),
              RichText(text: TextSpan(
                text: "Already have an account? ",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: AppPallete.gradient2,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
