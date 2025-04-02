part of 'user_cubit.dart';

enum UserStatus { initial, loading, loaded, error }

class UserState extends Equatable {
  final UserStatus status;
  final List<User>? users;
  final String? error;

  const UserState._({
    this.status = UserStatus.initial,
    this.users,
    this.error,
  });

  const UserState.initial() : this._();
  const UserState.loading() : this._(status: UserStatus.loading);
  const UserState.loaded(List<User> users)
      : this._(
          status: UserStatus.loaded,
          users: users,
        );
  const UserState.error(String message)
      : this._(
          status: UserStatus.error,
          error: message,
        );

  @override
  List<Object?> get props => [status, users, error];
}
