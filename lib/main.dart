

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_example/presentation/splash/splash_cubit/splash_cubit.dart';

import 'core/config/theme/app_theme.dart';
import 'core/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>SplashCubit()..appStarted(),

      child: MaterialApp(
        title: 'Flutter ',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initial,
        // 1. Static routes (no parameters)
        routes: AppRoutes.routes,
        // 2. Dynamic routes (with parameters)
        onGenerateRoute: AppRoutes.onGenerateRoute,
        // 3. Optional: catch-all for truly unknown names
        onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 - Page Not Found')),
          ),
        ),
      ),
    );
  }
}
