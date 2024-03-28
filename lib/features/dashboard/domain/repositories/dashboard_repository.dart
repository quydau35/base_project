import 'package:clean_architect_riverpod/shared/commons/domain/models/either.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/paginated_response.dart';
import 'package:clean_architect_riverpod/shared/exceptions/http_exception.dart';

abstract class DashboardRepository {
  Future<Either<AppException, PaginatedResponse>> fetchProducts(
      {required int skip});
  Future<Either<AppException, PaginatedResponse>> searchProducts(
      {required int skip, required String query});
}
