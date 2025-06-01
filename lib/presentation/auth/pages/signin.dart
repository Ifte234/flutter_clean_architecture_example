import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/widgets/buttons/primary_btn.dart';
import '../../../core/config/theme/app_colors.dart';
import '../../../core/config/theme/app_theme.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/router/app_routes.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  final TextEditingController _emailCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final isDark = AppTheme.isDarkMode(context);

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(res.medium),
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
          _dontHaveAccount(context),

          SizedBox(
            height: res.large,
          ),
          // if (Platform.isIOS)
          _appleSignIn(res, isDark),
          SizedBox(
            height: res.medium,
          ),
          _githubSignIn(res, isDark),
          SizedBox(
            height: res.medium,
          ),
          _googleSignIn(res, isDark),
          SizedBox(
            height: res.medium,
          ),
          _facebookSignIn(res, isDark)
        ],
      ),
    ));
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
        AppRoutes.pushLogin(c);
      },
      text: AppStrings.continueText,
    );
  }

  Widget _dontHaveAccount(c) {
    return Row(
      children: [
        Text(AppStrings.dontHaveAcc),
        GestureDetector(
          onTap: () {
            AppRoutes.pushCreateAcc(c);
          },
          child: Text(
            AppStrings.createOne,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _appleSignIn(res, isDark) {
    return _socialBtn(
      ontap: () {
        // Apple signin
      },
      res: res,
      isDark: isDark,
      title: AppStrings.apple,
      logo: FontAwesomeIcons.apple,
    );
  }

  Widget _githubSignIn(res, isDark) {
    return _socialBtn(
      ontap: () {
        // Github signin
      },
      res: res,
      isDark: isDark,
      title: AppStrings.github,
      logo: FontAwesomeIcons.github,
    );
  }

  Widget _googleSignIn(res, isDark) {
    return _socialBtn(
      ontap: () {
        // Google signin
      },
      res: res,
      isDark: isDark,
      title: AppStrings.google,
      logo: FontAwesomeIcons.google,
    );
  }

  Widget _facebookSignIn(res, isDark) {
    return _socialBtn(
      ontap: () {
        // Facebook signin
      },
      res: res,
      isDark: isDark,
      title: AppStrings.facebook,
      logo: FontAwesomeIcons.facebook,
    );
  }

  Widget _socialBtn(
      {required Responsive res,
      required bool isDark,
      required String title,
      required IconData logo,
      required VoidCallback ontap,
      double iconSize = 24}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: res.spacingHeight(48.0),
        width: res.screenWidth,
        padding: EdgeInsets.all(res.small),
        decoration: BoxDecoration(
            color: isDark
                ? AppColors.darkSecondaryBackground
                : AppColors.lightSecondaryBackground,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            FaIcon(
              logo,
              size: iconSize,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.continueWith + title,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
