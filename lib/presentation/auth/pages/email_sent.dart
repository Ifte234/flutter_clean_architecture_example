
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/assets/app_vectors.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({super.key});

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: res.medium),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            _emailIcon(),

            SizedBox(
              height: res.xxxLarge,
            ),
            sentText(),


          ],
        ),
      ),
    );
  }

  Widget _emailIcon() {
    return SvgPicture.asset(AppVectors.emailSending);
  }

  Widget sentText() {
    return Text(AppStrings.resetEmailSent);
  }
}
