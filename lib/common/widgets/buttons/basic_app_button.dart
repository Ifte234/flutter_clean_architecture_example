import 'package:flutter/material.dart';

import '../../../core/config/theme/app_colors.dart';
import '../../../core/responsive/responsive.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Widget ? content;
  final double ? height;
  final double ? width;
  const BasicAppButton({
    required this.onPressed,
    this.title = '',
    this.height,
    this.width,
    this.content,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final resp = Responsive(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          width ?? resp.screenWidth,
          height ?? resp.spacing(50)
        ),
      ),
      child: content ?? Text(
        title,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w400
        ),
      )
    );
  }
}