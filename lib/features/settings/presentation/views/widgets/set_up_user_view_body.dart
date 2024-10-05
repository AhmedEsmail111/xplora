import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/router.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_states.dart';
import 'package:xplora/features/settings/presentation/manager/slider/slider_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/user_name/user_name_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/user_name/user_name_state.dart';
import 'package:xplora/features/settings/presentation/views/widgets/custom_slider.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'choose_language_row.dart';
import 'rounded_text_field.dart';

class SetupUserViewBody extends StatelessWidget {
  const SetupUserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SliderCubit(),
        ),
        BlocProvider(
          create: (context) => UserNameCubit(),
        ),
      ],
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 16.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${locale.welcome} xplora',
                  style: style20ExtraBold,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  locale.need_info,
                  style: style18ExtraBold,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  locale.name,
                  style: style18ExtraBold,
                ),
                SizedBox(
                  height: 6.h,
                ),
                BlocBuilder<UserNameCubit, UserNameStates>(
                  builder: (context, state) {
                    final userNameCubit = UserNameCubit.of(context);
                    return RoundedTextField(
                      hintText: 'ex: Ahmed Ismail',
                      controller: userNameCubit.nameController,
                      maxLength: 20,
                      onChanged: (newValue) {
                        userNameCubit.changeUserName(newValue);
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  locale.age,
                  style: style18ExtraBold,
                ),
                SizedBox(
                  height: 6.h,
                ),
                const CustomSlider(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  locale.preferred_language,
                  style: style18ExtraBold,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const ChooseLanguageRow(),
                SizedBox(
                  height: 24.h,
                ),
                BlocBuilder<UserNameCubit, UserNameStates>(
                  builder: (context, state) {
                    final userNameCubit = UserNameCubit.of(context);
                    return BlocBuilder<LanguageCubit, LanguageStates>(
                      builder: (context, state) {
                        final languageCubit = LanguageCubit.of(context);
                        return CustomButton(
                          text: locale.submit,
                          onPressed: canSubmit(languageCubit, userNameCubit)
                              ? () {
                                  userNameCubit.cacheUserName();
                                  languageCubit.setDefaultLanguage();
                                  GoRouter.of(context)
                                      .pushReplacement(AppRouter.optionsView);
                                }
                              : null,
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool canSubmit(LanguageCubit languageCubit, UserNameCubit userNameCubit) {
    return languageCubit.index != null ||
        userNameCubit.nameController.text.trim().isNotEmpty;
  }
}
