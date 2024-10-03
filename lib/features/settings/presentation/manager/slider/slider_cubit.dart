import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/core/utils/services/shared_preferences.dart';

import 'slider_state.dart';

final _cacheService = const Locator().get<CacheService>();

class SliderCubit extends Cubit<SliderStates> {
  SliderCubit() : super(SliderInitial());

  static SliderCubit of(BuildContext context) => BlocProvider.of(context);

  double age = _cacheService.getData(key: userAge) ?? 18;

  void setAge(double newAge) {
    age = newAge;

    _cacheService.saveData(key: userAge, value: age);
    emit(SliderSetAgeState());
  }
}
