import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/models/user.dart';
import '../../domain/repositories/user_repository.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UserRepository _userRepository;

  UserCubit(this._userRepository) : super(const UserState.initial());

  Future<void> fetchUsers() async {
    try {
      emit(const UserState.loading());
      final users = await _userRepository.getAllUsers();
      emit(UserState.loaded(users));
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
