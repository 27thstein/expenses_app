part of 'user_data_bloc.dart';

@immutable
sealed class UserDataState {}

class UserDataInitial extends UserDataState {}

class UserDataLoading extends UserDataState {}

class UserDataLoaded extends UserDataState {
  final String userName;
  final double availableBalance;
  final List<Transaction> recentTransactions;

  UserDataLoaded( {required this.userName,required this.availableBalance,required this.recentTransactions,} );
}

class UserDataError extends UserDataState {
  final String error;

  UserDataError(this.error);
}
