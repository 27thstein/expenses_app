part of 'user_data_bloc.dart';

@immutable
sealed class UserDataEvent {}

class FetchUserData extends UserDataEvent {
  final String userId;

  FetchUserData(this.userId);
}
