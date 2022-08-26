import 'package:e_commerce_application/Screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_application/Screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_application/Screens/home/home_screen.dart';
import 'package:e_commerce_application/Screens/login_success/login_success_screen.dart';
import 'package:e_commerce_application/Screens/otp/otp_screen.dart';
import 'package:e_commerce_application/Screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_application/Screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_application/Screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
