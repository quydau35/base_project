import 'package:clean_architect_riverpod/features/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:clean_architect_riverpod/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:clean_architect_riverpod/features/authentication/domain/repositories/auth_repository.dart';
import 'package:clean_architect_riverpod/shared/commons/data/remote/remote.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authdataSourceProvider =
    Provider.family<LoginUserDataSource, NetworkService>(
  (_, networkService) => LoginUserRemoteDataSource(networkService),
);

final authRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) {
    final NetworkService networkService = ref.watch(netwokServiceProvider);
    final LoginUserDataSource dataSource =
        ref.watch(authdataSourceProvider(networkService));
    return AuthenticationRepositoryImpl(dataSource);
  },
);
