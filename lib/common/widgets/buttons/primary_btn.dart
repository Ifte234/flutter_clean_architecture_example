
import 'package:flutter/material.dart';

import '../../../core/config/theme/app_colors.dart';
import '../../../core/responsive/responsive.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const PrimaryBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: res.spacingHeight(48),
        width: res.screenWidth,
        padding: EdgeInsets.all(res.small),
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: AppColors.white, fontSize: 16),
        )),
      ),
    );
  }
}
