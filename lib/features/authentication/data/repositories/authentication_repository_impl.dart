import 'package:clean_architect_riverpod/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:clean_architect_riverpod/features/authentication/domain/repositories/auth_repository.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/either.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/user/user_model.dart';
import 'package:clean_architect_riverpod/shared/exceptions/http_exception.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final LoginUserDataSource dataSource;

  AuthenticationRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppException, User>> loginUser({required User user}) {
    return dataSource.loginUser(user: user);
  }
}
