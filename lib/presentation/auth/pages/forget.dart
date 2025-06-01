
import 'package:flutter/material.dart';

import '../../../common/widgets/appBar/app_bar.dart';
import '../../../common/widgets/buttons/primary_btn.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/router/app_routes.dart';

class Forget extends StatelessWidget {
  Forget({super.key});
  TextEditingController _emailCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Scaffold(
      appBar: const PrimaryAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: res.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: res.spacingHeight(100)),
            // _createAccText(),
           const Text(AppStrings.forgetPassword),
            SizedBox(
              height: res.large,
            ),
            _emailField(res),
            SizedBox(
              height: res.large,
            ),
            _continueBtn(context)
          ],
        ),
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
      text: AppStrings.returnToLogin,
    );
  }
}
