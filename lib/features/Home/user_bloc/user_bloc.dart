import 'package:expenses_app/features/Home/models/user_model.dart';
import 'package:expenses_app/features/Home/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<FetchUserData>(_fetchUserData);
  }

  void _fetchUserData(FetchUserData event, Emitter<UserState> emit) async {
    emit(UserLoading());
    try {} catch (error) {
      emit(UserError(error.toString()));
    }
  }
}
