import 'package:clean_architect_riverpod/shared/widgets/app_error.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:clean_architect_riverpod/features/authentication/presentation/screens/login_screen.dart';
import 'package:clean_architect_riverpod/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:clean_architect_riverpod/features/splash/presentation/screens/splash_screen.dart';

enum AppRoute {
  login,
  dashboard,
  splash,
}

final GoRouter router = GoRouter(
  initialLocation: SplashScreen.routeName,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: SplashScreen.routeName,
      name: AppRoute.splash.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: DashboardScreen.routeName,
      name: AppRoute.dashboard.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardScreen();
      },
    ),
    GoRoute(
      path: LoginScreen.routeName,
      name: AppRoute.login.name,
      builder: (BuildContext context, GoRouterState state) {
        return LoginScreen();
      },
    ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) => const AppError(),
);
