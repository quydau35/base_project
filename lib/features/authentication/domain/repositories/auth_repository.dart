import 'package:clean_architect_riverpod/shared/commons/domain/models/either.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/models.dart';
import 'package:clean_architect_riverpod/shared/exceptions/http_exception.dart';

abstract class AuthenticationRepository {
  Future<Either<AppException, User>> loginUser({required User user});
}
