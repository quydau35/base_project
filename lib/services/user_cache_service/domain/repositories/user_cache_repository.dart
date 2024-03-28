import 'package:clean_architect_riverpod/shared/commons/domain/models/either.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/models.dart';
import 'package:clean_architect_riverpod/shared/exceptions/http_exception.dart';

abstract class UserRepository {
  Future<Either<AppException, User>> fetchUser();
  Future<bool> saveUser({required User user});
  Future<bool> deleteUser();
  Future<bool> hasUser();
}
