
import 'package:flutter/material.dart';

import '../../../common/widgets/appBar/app_bar.dart';
import '../../../common/widgets/buttons/primary_btn.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/router/app_routes.dart';

class CreateAcc extends StatelessWidget {
  CreateAcc({super.key});
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);

    return Scaffold(
        appBar: const PrimaryAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: res.medium),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: res.spacingHeight(100)),
              _createAccText(),
              SizedBox(
                height: res.large,
              ),
              _emailField(res),
              SizedBox(
                height: res.large,
              ),
              _firstNameField(res),
              SizedBox(
                height: res.large,
              ),
              _lastNameField(res),
              SizedBox(
                height: res.large,
              ),
              _emailField(res),
              SizedBox(
                height: res.large,
              ),
              _passwordField(res),
              SizedBox(
                height: res.large,
              ),
              _forget(context),
              SizedBox(
                height: res.large,
              ),
              PrimaryBtn(
                  text: AppStrings.continueText,
                  onTap: () {
                    AppRoutes.pushDetail(context);
                  })
            ]),
          ),
        ));
  }

  Widget _createAccText() {
    return const Text(
      AppStrings.createAcc,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }

  Widget _firstNameField(res) {
    return TextFormField(
      controller: _firstNameCon,
      decoration: InputDecoration(
          hintText: AppStrings.firstName, contentPadding: EdgeInsets.all(res.small)),
    );
  }

  Widget _lastNameField(res) {
    return TextFormField(
      controller: _lastNameCon,
      decoration: InputDecoration(
          hintText: AppStrings.lastName, contentPadding: EdgeInsets.all(res.small)),
    );
  }

  Widget _emailField(res) {
    return TextFormField(
      controller: _emailCon,
      decoration: InputDecoration(
          hintText: "", contentPadding: EdgeInsets.all(res.small)),
    );
  }

  Widget _passwordField(res) {
    return TextFormField(
      controller: _passwordCon,
      decoration: InputDecoration(
          hintText: AppStrings.password, contentPadding: EdgeInsets.all(res.small)),
    );
  }

  Widget _forget(c) {
    return Row(
      children: [
        const Text(AppStrings.forgetPassword),
        GestureDetector(
          onTap: () {
            AppRoutes.pushForget(c);
          },
          child: const Text(
            AppStrings.reset,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
