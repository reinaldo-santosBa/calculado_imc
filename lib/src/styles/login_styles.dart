import 'package:flutter/material.dart';
import 'package:login_dio/src/constants/colors.dart';

class LoginStyles {
  LoginStyles._();
  static const typeBtn = true;
  static const TextStyle loginTitle = TextStyle(
    fontSize: 40,
    color: AppColors.white,
    letterSpacing: 1,
  );

  static const TextStyle loginSubTitle = TextStyle(
    fontSize: 20,
    color: AppColors.lightGrey,
    letterSpacing: 1,
  );

  static ButtonStyle txtBtn = TextButton.styleFrom(
      backgroundColor: AppColors.primary, padding: const EdgeInsets.all(10.0));

  static const TextStyle txtBtnText = TextStyle(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w900,
    letterSpacing: 5,
  );

  static const TextStyle input = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    letterSpacing: 1,
  );
  static const inputDecorationEmail = InputDecoration(
    hintText: "E-mail",
    hintStyle: LoginStyles.input,
    prefixIcon: Icon(
      Icons.email_outlined,
      size: 30,
    ),
    prefixIconColor: AppColors.primary,
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
  );
  static InputDecoration inputDecorationPassword = const InputDecoration(
    hintText: "Password",
    hintStyle: LoginStyles.input,
    prefixIcon: Icon(
      Icons.lock_clock_outlined,
      size: 30,
    ),
    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.white,
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
  );
}
