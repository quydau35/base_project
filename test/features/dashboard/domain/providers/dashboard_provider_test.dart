import 'package:clean_architect_riverpod/features/dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:clean_architect_riverpod/features/dashboard/domain/providers/dashboard_providers.dart';
import 'package:clean_architect_riverpod/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/providers/dio_network_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final providerContainer = ProviderContainer();
  late dynamic networkService;
  late dynamic dashboardDataSource;
  late dynamic dashboardRespository;
  setUpAll(
    () {
      networkService = providerContainer.read(netwokServiceProvider);
      dashboardDataSource =
          providerContainer.read(dashboardDatasourceProvider(networkService));
      dashboardRespository =
          providerContainer.read(dashboardRepositoryProvider);
    },
  );
  test('dashboardDatasourceProvider is a DashboardDatasource', () {
    expect(
      dashboardDataSource,
      isA<DashboardDatasource>(),
    );
  });
  test('dashboardRepositoryProvider is a DashboardRepository', () {
    expect(
      dashboardRespository,
      isA<DashboardRepository>(),
    );
  });
  test('dashboardRepositoryProvider returns a DashboardRepository', () {
    expect(
      providerContainer.read(dashboardRepositoryProvider),
      isA<DashboardRepository>(),
    );
  });
}
