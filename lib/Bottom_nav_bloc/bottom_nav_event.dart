part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}


final class BottomNavItemTapped extends BottomNavEvent{
  final int index;

  BottomNavItemTapped(this.index);

}