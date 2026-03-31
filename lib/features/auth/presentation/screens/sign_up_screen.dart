import 'package:crafty_bay/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:crafty_bay/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/extensions/utils_extension.dart';
import '../../../shared/presentation/utils/validators.dart';
import '../widgets/app_logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = "/sign-up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SizedBox(height: 48),
                  AppLogo(),
                  SizedBox(height: 24),
                  Text('Sign Up With Email', style: context.textTheme.titleLarge),
                  Text('Get started with your details', style: context.textTheme.bodyLarge?.copyWith(color: Colors.grey)),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    decoration: InputDecoration(
                      hintText: "Email"
                    ),
                    validator: (String? value) => Validators.validateEmail(value, 'Email is required'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: InputDecoration(
                      hintText: "First Name"
                    ),
                    validator: (String? value) => Validators.validateText(value, 'First name is required'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: InputDecoration(
                      hintText: "Last Name"
                    ),
                    validator: (String? value) => Validators.validateText(value, 'Last name is required'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneTEController,
                    decoration: InputDecoration(
                      hintText: "Phone"
                    ),
                    validator: (String? value) => Validators.validateText(value, 'Phone is required'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _cityTEController,
                    decoration: InputDecoration(
                      hintText: "City"
                    ),
                    validator: (String? value) => Validators.validateText(value, 'City is required'),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    validator: (String? value) => Validators.validatePassword(value),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _onTapSignUpButton,
                    child: Text("Sign Up")
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: _onTapSignInTextButton,
                    child: Text("Already have an account? Sign In")
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _phoneTEController.dispose();
    _cityTEController.dispose();
    _passwordTEController.dispose();
  }

  void _onTapSignUpButton()
  {
    Navigator.pushNamed(context, VerifyOtpScreen.name);
  }

  void _onTapSignInTextButton()
  {
    Navigator.pushNamed(context, SignInScreen.name);
  }
}
