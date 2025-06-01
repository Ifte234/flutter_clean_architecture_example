
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../../../common/widgets/buttons/primary_btn.dart';
import '../../../core/config/theme/app_theme.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/router/app_routes.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final isDark = AppTheme.isDarkMode(context);

    return Scaffold(
      // appBar: const BasicAppbar(hideBack: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: res.spacingHeight(100)),
            _signinText(),
            SizedBox(
              height: res.large,
            ),
            _emailField(res),
            SizedBox(
              height: res.medium,
            ),
            _continueBtn(context),
            SizedBox(
              height: res.medium,
            ),
            _forget(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return const Text(
     AppStrings.signin,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }

  Widget _emailField(res) {
    return TextFormField(
      controller: _emailCon,
      decoration: InputDecoration(
          hintText: AppStrings.emailAddress, contentPadding: EdgeInsets.all(res.small)),
    );
  }

  Widget _continueBtn(c) {
    return PrimaryBtn(
      onTap: () {
        AppRoutes.pushEmailSent(c);
      },
      text: AppStrings.continueText,
    );
  }

  Widget _forget(c) {
    return Row(
      children: [
        const Text(AppStrings.forgetPasswordQuestion),
        GestureDetector(
          onTap: () {
            AppRoutes.pushForget(c);
          },
          child: const Text(
            AppStrings.continueText,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
