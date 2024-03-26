// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "registration_page_title": "Registration",
  "name_label": "Name",
  "email_label": "Email",
  "password_label": "Password",
  "register_button_label": "Register"
};
static const Map<String,dynamic> kk = {
  "registration_page_title": "Тіркелу",
  "name_label": "Аты",
  "email_label": "Электрондық пошта",
  "password_label": "Құпия сөз",
  "register_button_label": "Тіркелу"
};
static const Map<String,dynamic> ru = {
  "registration_page_title": "Регистрация",
  "name_label": "Имя",
  "email_label": "Email",
  "password_label": "Пароль",
  "register_button_label": "Зарегистрироваться"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}
