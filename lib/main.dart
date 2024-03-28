import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clean_architect_riverpod/main/app.dart';
import 'package:clean_architect_riverpod/main/app_env.dart';
import 'package:clean_architect_riverpod/main/observers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => mainGeneral(AppEnvironment.PROD);

Future<void> mainGeneral(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvInfo.initialize(environment);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(ProviderScope(
    observers: [
      Observers(),
    ],
    child: const MyApp(),
  ));
}
