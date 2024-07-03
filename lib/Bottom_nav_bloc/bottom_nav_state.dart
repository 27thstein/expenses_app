part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavState {}

class BottomNavInitial extends BottomNavState {}

class BottomNavItemSelected extends BottomNavState {
  final int selectedIndex;

   BottomNavItemSelected(this.selectedIndex);

 
}