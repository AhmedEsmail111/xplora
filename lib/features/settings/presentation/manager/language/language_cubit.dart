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
  void setDefaultLanguage() async {
    if (index == 0 && _cacheService.getData(key: languageKey) != 'en') {
      await _cacheService.saveData(key: languageKey, value: 'en');
    }
    if (index == 1 && _cacheService.getData(key: languageKey) != 'ar') {
      await _cacheService.saveData(key: languageKey, value: 'ar');
    }
    emit(SaveDefaultLanguageProfileStatus());
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
