
import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/router/app_routes.dart';
import '../../settings/pages/settings.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const  Text(AppStrings.home)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.signUp),
              child: const Text(AppStrings.goToSignUp),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(
            //       context,
            //       AppRoutes.settingsPage,
            //       arguments: SettingsArgs(
            //         username: 'bob456',
            //         notificationsEnabled: false,
            //       ),
            //     );
            //   },
            //   child: const Text('Go to Settings (with args)'),
            // ),
          ],
        ),
      ),
    );
  }
}
