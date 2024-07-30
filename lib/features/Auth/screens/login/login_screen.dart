import 'package:expenses_app/bottom_nav_bar.dart';
import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/common/widgets/logo_text_button.dart';
import 'package:expenses_app/features/Auth/auth_bloc/auth_bloc.dart';
import 'package:expenses_app/features/Auth/screens/signup/signup_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:expenses_app/utilities/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/login_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
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
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TITLE , SUBTITLE BACK BUTTON
                  HeadingText(
                    title: ExStrings.login,
                    subTitle: ExStrings.loginPageSubtext,
                    onBackPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                          (route) => false);
                    },
                  ),

                  // EMAIL FIELD

                  CustomTextField(
                    validator: ValidationUtil.validateEmail,
                    controller: _emailController,
                    label: ExStrings.email,
                    hintText: ExStrings.emailPlaceholder,
                    prefixIcon: ExImages.atIcon,
                  ),

                  const SizedBox(
                    height: 28,
                  ),

                  // PASSWORD FIELD

                  CustomTextField(
                    validator: ValidationUtil.validatePassword,
                    controller: _passwordController,
                    label: ExStrings.yourPassword,
                    hintText: ExStrings.passwordPlaceholder,
                    prefixIcon: ExImages.keyLockIcon,
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        ExStrings.forgotPassword,
                        style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                          fontSize: 16,
                          color: const Color(0xFF1A38F8),
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF1A38F8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),

                  /// LOGIN BUTTON

                  CustomButton(
                    text: ExStrings.login,
                    onPressed: () {
                      _submitLoginForm();
                    },
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  /// CONTINUE WITH EMAIL BUTTON

                  LogoTextButton(
                    logo: ExImages.google,
                    text: ExStrings.continueWithGoogle,
                    onPressed: () {},
                  ),

                  /// GO TO SIGN UP
                  const SizedBox(
                    height: 35,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(ExStrings.dontHaveAcc,
                          style: ExTextTheme.lightTextTheme.titleMedium!
                              .copyWith(fontSize: 16)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          ExStrings.register,
                          style:
                              ExTextTheme.lightTextTheme.titleMedium!.copyWith(
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
          );
        },
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

  void _submitLoginForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final loginData = LoginModel(
        email: _emailController.text,
        password: _passwordController.text,
      );
      context.read<AuthBloc>().add(AuthLoggedIn(loginModel: loginData));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
