import 'dart:io';

final kTestMode = Platform.environment.containsKey('FLUTTER_TEST');
const int productsPerPage = 20;
const String userLocalStorageKey = 'user';
const String appThemeStorageKey = 'AppTheme';
