
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/assets/app_vectors.dart';
import '../../../core/config/theme/app_colors.dart';
import '../../../core/config/theme/app_theme.dart';
import '../../../core/router/app_routes.dart';
import '../splash_cubit/splash_cubit.dart';
import '../splash_cubit/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark =AppTheme.isDarkMode(context);
    return BlocListener<SplashCubit,SplashState>(
      listener: (context,state){
        if(state is UnAuthenticated){
          AppRoutes.pushCreateAcc(context);
        }
        if(state is Authenticated){
          //Todo:
        }
      },
      child: Scaffold(
        backgroundColor:isDark? AppColors.darkBackground:AppColors.lightBackground,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo),),
      ),
    );
  }
}
