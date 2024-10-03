import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locator/locator.dart';

import '../../../../../core/utils/my_consonants.dart';
import '../../../../../core/utils/services/shared_preferences.dart';
import 'user_name_state.dart';

final _cacheService = const Locator().get<CacheService>();

class UserNameCubit extends Cubit<UserNameStates> {
  UserNameCubit() : super(UserNameInitial());

  static UserNameCubit of(BuildContext context) => BlocProvider.of(context);

  final nameController =
      TextEditingController(text: _cacheService.getData(key: userName) ?? '');

  void changeUserName(String newText) {
    nameController.text = newText;
    emit(ChangeUserName());
  }

  void cacheUserName() {
    _cacheService.saveData(
      key: userName,
      value: nameController.text.trim(),
    );
  }
}
