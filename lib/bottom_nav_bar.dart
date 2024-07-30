import 'package:expenses_app/Bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:expenses_app/features/Home/home_screen.dart';
import 'package:expenses_app/features/profile/profile_screen.dart';
import 'package:expenses_app/features/wallets/wallets_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          if (state is BottomNavItemSelected) {
            switch (state.selectedIndex) {
              case 0:
                return const HomeScreen();
              case 1:
                return const WalletsScreen();
              case 2:
                return const HomeScreen();
              case 3:
                return const HomeScreen();
              case 4:
                return const ProfileScreen();
              default:
                return const HomeScreen();
            }
          }
          return const HomeScreen();
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocBuilder<BottomNavBloc, BottomNavState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 234, 233, 233),
                    blurRadius: 50,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      context,
                      icon: SvgPicture.asset(
                        height: 30,
                        ExImages.homeIcon,
                        colorFilter: state is BottomNavItemSelected &&
                                state.selectedIndex == 0
                            ? const ColorFilter.mode(
                                ExColors.black, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                      ),
                      index: 0,
                      isSelected: state is BottomNavItemSelected &&
                          state.selectedIndex == 0,
                    ),
                    _buildNavItem(
                      context,
                      icon: SvgPicture.asset(
                        height: 30,
                        ExImages.walletIcon2,
                        colorFilter: state is BottomNavItemSelected &&
                                state.selectedIndex == 1
                            ? const ColorFilter.mode(
                                ExColors.black, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                      ),
                      index: 1,
                      isSelected: state is BottomNavItemSelected &&
                          state.selectedIndex == 1,
                    ),
                    _buildNavItem(
                      context,
                      icon: SvgPicture.asset(
                        height: 30,
                        ExImages.chartIcon,
                        colorFilter: state is BottomNavItemSelected &&
                                state.selectedIndex == 2
                            ? const ColorFilter.mode(
                                ExColors.black, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                      ),
                      index: 2,
                      isSelected: state is BottomNavItemSelected &&
                          state.selectedIndex == 2,
                    ),
                    _buildNavItem(
                      context,
                      icon: SvgPicture.asset(
                        height: 30,
                        ExImages.homeIcon,
                        colorFilter: state is BottomNavItemSelected &&
                                state.selectedIndex == 3
                            ? const ColorFilter.mode(
                                ExColors.black, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                      ),
                      index: 3,
                      isSelected: state is BottomNavItemSelected &&
                          state.selectedIndex == 3,
                    ),
                    _buildNavItem(
                      context,
                      icon: SvgPicture.asset(
                        height: 30,
                        ExImages.userIcon2,
                        colorFilter: state is BottomNavItemSelected &&
                                state.selectedIndex == 4
                            ? const ColorFilter.mode(
                                ExColors.black, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                Colors.grey, BlendMode.srcIn),
                      ),
                      index: 4,
                      isSelected: state is BottomNavItemSelected &&
                          state.selectedIndex == 4,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required SvgPicture icon,
    required int index,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () {
        context.read<BottomNavBloc>().add(BottomNavItemTapped(index));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [icon],
      ),
    );
  }
}
