import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture_example/presentation/splash/splash_cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState>{
  SplashCubit():super(DisplaySplash());

  void appStarted()async{
  await  Future.delayed(Duration(seconds: 2));
    emit(UnAuthenticated());

  }
}