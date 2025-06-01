
import 'package:flutter/material.dart';

import '../../../core/config/theme/app_colors.dart';
import '../../../core/config/theme/app_theme.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/router/app_routes.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget{
  const PrimaryAppBar({super.key});
 @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final isDark = AppTheme.isDarkMode(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: res.spacing(80),
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isDark ? AppColors.darkBackground : AppColors.lightBackground,
        ),
        child: IconButton(
            onPressed: () {
              AppRoutes.back(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
    );
  }
}
