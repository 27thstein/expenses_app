import 'package:expenses_app/features/Home/repositories/user_data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/transaction_model.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final UserDataRepository userDataRepository;

  UserDataBloc({required this.userDataRepository}) : super(UserDataInitial()) {
    on<FetchUserData>(_onFetchUserData);
  }

  void _onFetchUserData(
      FetchUserData event, Emitter<UserDataState> emit) async {
    emit(UserDataLoading());
    try {
      final data = await userDataRepository.fetchUserData(event.userId);
      emit(
        UserDataLoaded(
          userName: data['name'],
          availableBalance: 9,
          recentTransactions: (data['recent_transactions'] as List)
              .map((tx) => Transaction.fromJson(tx))
              .toList(),
        ),
      );
    } catch (error) {
      emit(
        UserDataError(error.toString()),
      );
    }
  }

  
}
