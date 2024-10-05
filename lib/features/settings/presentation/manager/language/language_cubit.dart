import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/core/utils/services/shared_preferences.dart';

import 'language_states.dart';

const _locator = Locator();
final _cacheService = _locator.get<CacheService>();

class LanguageCubit extends Cubit<LanguageStates> {
  LanguageCubit() : super(InitialLanguageState());
  static LanguageCubit of(context) => BlocProvider.of(context);

  int? index = _cacheService.getData(key: languageKey) != null
      ? _cacheService.getData(key: languageKey) == 'ar'
          ? 1
          : 0
      : null;

  Locale locale = Locale(_cacheService.getData(key: languageKey) ?? 'ar');

  void setDefaultLanguage() async {
    if (index == 0 &&
        _cacheService.getData(key: languageKey) != 'en' &&
        locale != const Locale('en')) {
      await _cacheService.saveData(key: languageKey, value: 'en');
      locale = const Locale('en');
      emit(EnglishDefaultLanguageState());
    }
    if (index == 1 &&
        _cacheService.getData(key: languageKey) != 'ar' &&
        locale != const Locale('ar')) {
      await _cacheService.saveData(key: languageKey, value: 'ar');
      locale = const Locale('ar');
      emit(ArabicDefaultLanguageState());
    }
  }

  void changeLanguage(bool check) async {
    if (check == false) {
      index = 0;
      emit(SuccessChangeCheckLanguageState());
    } else {
      index = 1;
      emit(SuccessChangeCheckLanguageState());
    }
  }
}
