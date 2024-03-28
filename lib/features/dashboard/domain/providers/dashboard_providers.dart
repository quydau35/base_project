import 'package:clean_architect_riverpod/features/dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:clean_architect_riverpod/features/dashboard/data/repositories/dashboard_repository.dart';
import 'package:clean_architect_riverpod/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:clean_architect_riverpod/shared/commons/data/remote/network_service.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardDatasourceProvider =
    Provider.family<DashboardDatasource, NetworkService>(
  (_, networkService) => DashboardRemoteDatasource(networkService),
);

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  final networkService = ref.watch(netwokServiceProvider);
  final datasource = ref.watch(dashboardDatasourceProvider(networkService));
  final respository = DashboardRepositoryImpl(datasource);

  return respository;
});
