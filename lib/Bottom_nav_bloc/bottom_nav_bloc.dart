import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavItemSelected(0)) {
    on<BottomNavItemTapped>(_bottomNavClicked);
  }

  void _bottomNavClicked(
    BottomNavItemTapped event,
    Emitter<BottomNavState> emit,
  ) async {
     emit(BottomNavItemSelected(event.index));
  }
}
