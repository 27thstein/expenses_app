import 'package:expenses_app/bottom_nav_bar.dart';
import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/features/Auth/models/signup_model.dart';
import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:expenses_app/utilities/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth_bloc/auth_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  // final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            // Show loading indicator
            _showLoadingDialog(context);
          } else if (state is AuthAuthenticated) {
            // Hide loading indicator and proceed to the next screen
            Navigator.pop(context); // Pop the loading dialog
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
                ),
                (route) => false);
          } else if (state is AuthFailure) {
            // Hide loading indicator and show error
            Navigator.pop(context); // Pop the loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: ExColors.error,
                content: Text(state.error.toString()),
              ),
            );
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Heading
                HeadingText(
                  title: ExStrings.register,
                  subTitle: ExStrings.registerPageSubtext,
                  onBackPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false);
                  },
                ),

                /// NAME FIELD
                CustomTextField(
                  label: ExStrings.yourName,
                  hintText: ExStrings.yourNamePlaceholder,
                  prefixIcon: ExImages.userIcon,
                  controller: _nameController,
                  validator: (value) =>
                      ValidationUtil.validateNotEmpty(value, 'Full Name'),
                ),

                const SizedBox(
                  height: 28,
                ),

                /// EMAIL INPUT FIELD
                CustomTextField(
                  label: ExStrings.email,
                  hintText: ExStrings.emailPlaceholder,
                  prefixIcon: ExImages.atIcon,
                  controller: _emailController,
                  validator: ValidationUtil.validateEmail,
                ),

                const SizedBox(
                  height: 28,
                ),

                /// PASSWORD FIELD
                CustomTextField(
                  label: ExStrings.yourPassword,
                  hintText: ExStrings.passwordPlaceholder,
                  prefixIcon: ExImages.keyLockIcon,
                  controller: _passwordController,
                  validator: ValidationUtil.validatePassword,
                ),

                const SizedBox(
                  height: 30,
                ),

                /// REGISTER BUTTON
                CustomButton(
                  text: ExStrings.register,
                  onPressed: () {
                    _submitSignUpForm();
                  },
                ),

                const SizedBox(
                  height: 35,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ExStrings.alreadyHaveAcc,
                        style: ExTextTheme.lightTextTheme.titleMedium!
                            .copyWith(fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (route) => false);
                      },
                      child: Text(
                        ExStrings.login,
                        style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                          fontSize: 16,
                          color: const Color(0xFF1A38F8),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF1A38F8),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: ExColors.white,
          ),
        );
      },
    );
  }

  void _submitSignUpForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // Proceed with signup
      final signUpData = SignUpModel(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
      );
      context
          .read<AuthBloc>()
          .add(AuthSignupRequested(signUpModel: signUpData));
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
