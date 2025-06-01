
import 'package:flutter/material.dart';

import '../../../common/widgets/buttons/primary_btn.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/responsive/responsive.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: res.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: res.spacingHeight(100)),

            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
PrimaryBtn(text: AppStrings.men, onTap: (){}),

PrimaryBtn(text: AppStrings.women, onTap: (){}),
              ],
            )

          ],
        ),
      ),
    );
  }
}
