import 'package:dartz/dartz.dart';
import 'package:gr_edtech/feature/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<Either<Exception, List<User>>> getAllUsers();
  Future<Either<Exception, User>> getUserById(int id);
  Future<Either<Exception, void>> createUser(User user);
  Future<Either<Exception, void>> deleteUser(int id);
}
