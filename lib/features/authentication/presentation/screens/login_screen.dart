import 'package:flutter/material.dart';
import 'package:clean_architect_riverpod/features/authentication/presentation/providers/auth_providers.dart';
import 'package:clean_architect_riverpod/features/authentication/presentation/providers/state/auth_state.dart';
import 'package:clean_architect_riverpod/features/authentication/presentation/widgets/auth_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:clean_architect_riverpod/routes/app_route.dart';

class LoginScreen extends ConsumerWidget {
  static const routeName = '/loginScreen';

  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController usernameController =
      TextEditingController(text: 'atuny0');
  final TextEditingController passwordController =
      TextEditingController(text: '9uQFF1Lh');
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authStateNotifierProvider);
    ref.listen(
      authStateNotifierProvider.select((value) => value),
      ((previous, next) {
        //show Snackbar on failure
        if (next is Failure) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(next.exception.message.toString())));
        } else if (next is Success) {
          context.goNamed(AppRoute.dashboard.name);
        }
      }),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template with Riverpod'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AuthField(
              hintText: 'Username',
              controller: usernameController,
            ),
            AuthField(
              hintText: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            state.maybeMap(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              orElse: () => loginButton(ref),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginButton(WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // validate email and password
        ref.read(authStateNotifierProvider.notifier).loginUser(
              usernameController.text,
              passwordController.text,
            );
      },
      child: const Text('Login'),
    );
  }
}
