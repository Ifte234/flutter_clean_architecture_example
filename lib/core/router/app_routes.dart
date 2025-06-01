
import 'package:flutter/material.dart';
import '../../presentation/auth/pages/create_acc.dart';
import '../../presentation/auth/pages/detail.dart';
import '../../presentation/auth/pages/email_sent.dart';
import '../../presentation/auth/pages/forget.dart';
import '../../presentation/auth/pages/signup.dart';
import '../../presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Route names
  static const String initial = '/';
  static const String signUp = '/signUp';
  static const String signin = '/signin';
  static const String creatAcc = '/createAc';
  static const String detail = '/detail';
  static const String forget = '/forget';
  static const String emailSent = '/emailSent';
  static const String splash = '/splash';
  static const String settingsPage = '/settings';

  // Static routes (no args)
  static final Map<String, WidgetBuilder> routes = {
    initial: (_) =>const SplashPage(),
    splash: (_) => const SplashPage(),
    signUp: (_) => SignupPage(),
    creatAcc: (_) => CreateAcc(),
    detail: (_) => Detail(),
    forget: (_) => Forget(),
    emailSent: (_) => EmailSent(),
  };

  // Dynamic route handler (with args)
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case settingsPage:
        // final args = settings.arguments as SettingsArgs;
        // return MaterialPageRoute(
        //   builder: (_) => SettingsPage(args: args),
        // );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No Route Found')),
          ),
        );
    }
  }

  // ─── NAVIGATION HELPERS ───────────────────────────────────

  /// Pushes a named route without arguments.
  static Future<T?> push<T>(BuildContext context, String routeName) {
    return Navigator.pushNamed<T>(context, routeName);
  }

  /// Replaces the current route.
  static Future<T?> pushReplacement<T>(BuildContext context, String routeName) {
    return Navigator.pushReplacementNamed<T, void>(context, routeName);
  }

  static void back(BuildContext c, [dynamic result]) {
    Navigator.of(c).pop(result);
  }

  /// Clears stack and goes to [routeName].
  static Future<T?> pushAndRemoveAll<T>(
      BuildContext context, String routeName) {
    return Navigator.pushNamedAndRemoveUntil<T>(
      context,
      routeName,
      (route) => false,
    );
  }

  // Convenience shortcuts for each screen:
  static Future<void> pushSignUp(BuildContext c) => push(c, signUp);
  static Future<void> pushLogin(BuildContext c) => push(c, signUp);
  static Future<void> pushSplash(BuildContext c) => pushReplacement(c, splash);
  static Future<void> pushCreateAcc(BuildContext c) => push(c, creatAcc);
  static Future<void> pushDetail(BuildContext c) => push(c, detail);
  static Future<void> pushForget(BuildContext c) => push(c, forget);
  static Future<void> pushEmailSent(BuildContext c) => push(c, emailSent);

  /// Settings needs arguments
  static Future<void> pushSettings(
    BuildContext c, {
    required String username,
    required bool notificationsEnabled,
  }) {
    return Navigator.pushNamed<void>(
      c,
      settingsPage,
      // arguments: SettingsArgs(
      //   username: username,
      //   notificationsEnabled: notificationsEnabled,
      // ),
    );
  }
}
