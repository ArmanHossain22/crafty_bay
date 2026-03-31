import 'package:crafty_bay/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../app/extensions/utils_extension.dart';
import '../widgets/app_logo.dart';
import '../widgets/resend_otp_widget.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  static const String name = "/verify-otp";

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final PinInputController _otpTEController = PinInputController();

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
                  Text('Enter Your OTP', style: context.textTheme.titleLarge),
                  Text(
                    'Verify your otp that has been sent to your email',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge?.copyWith(color: Colors.grey)
                  ),
                  const SizedBox(height: 24),
                  MaterialPinField(
                    length: 4,
                    pinController: _otpTEController,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    theme: MaterialPinTheme(
                      shape: MaterialPinShape.outlined,
                      cellSize: Size(50, 50),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _onTapVerifyButton,
                    child: Text("Verify")
                  ),
                  ResendOtpWidget(),
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
    _otpTEController.dispose();
  }

  void _onTapVerifyButton()
  {

  }

  void _onTapSignInTextButton()
  {
    Navigator.pushNamed(context, SignInScreen.name);
  }
}
