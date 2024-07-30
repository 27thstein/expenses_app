import 'package:expenses_app/common/widgets/reuseable_container.dart';
import 'package:expenses_app/features/Auth/auth_bloc/auth_bloc.dart';
import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:expenses_app/utilities/constants/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _logout(BuildContext context) async {
    // Dispatch logout event
    context.read<AuthBloc>().add(AuthLoggedOut());

    // Clear navigation stack and navigate to LoginScreen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ExDeviceUtils.getAppBarHeight() * 1.5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'Firstname Lastname',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8D8E98),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const ReuseableContainer(
                label: Text(
                  'Payment',
                  style: exProfileTextStyle,
                ),
                prefixIcon: Icon(Iconsax.empty_wallet_add),
                SuffixIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            const ReuseableContainer(
                label: Text(
                  'Profile',
                  style: exProfileTextStyle,
                ),
                prefixIcon: Icon(Iconsax.profile_add),
                SuffixIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            const ReuseableContainer(
                label: Text(
                  'Invite Friends',
                  style: exProfileTextStyle,
                ),
                prefixIcon: Icon(Iconsax.profile_2user),
                SuffixIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            const ReuseableContainer(
                label: Text(
                  'Help',
                  style: exProfileTextStyle,
                ),
                prefixIcon: Icon(Iconsax.warning_2),
                SuffixIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                _logout(context);
              },
              child: const ReuseableContainer(
                  label: Text(
                    'Logout',
                    style: exProfileTextStyle,
                  ),
                  prefixIcon: Icon(Iconsax.logout),
                  SuffixIcon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
