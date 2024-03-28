import 'package:clean_architect_riverpod/shared/commons/domain/models/models.dart';
import 'package:clean_architect_riverpod/shared/commons/domain/models/response.dart';
import 'package:clean_architect_riverpod/shared/exceptions/http_exception.dart';

import 'data/user_map.dart';

final AppException ktestAppException =
    AppException(message: '', statusCode: 0, identifier: '');

final User ktestUser = User.fromJson(const {});

final User ktestUserFromMap = User.fromJson(ktestUserMap);

final Response ktestUserResponse =
    Response(statusMessage: 'message', statusCode: 1, data: {});
