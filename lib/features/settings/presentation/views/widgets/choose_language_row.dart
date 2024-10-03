import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/language/language_cubit.dart';
import '../../manager/language/language_states.dart';
import 'language_column.dart';

class ChooseLanguageRow extends StatelessWidget {
  const ChooseLanguageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageStates>(
      builder: (context, state) {
        var cubit = LanguageCubit.of(context);
        double width = MediaQuery.sizeOf(context).width;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguageColumn(
              onTap: () {
                cubit.changeLanguage(false);
              },
              check: cubit.index == 0 ? true : false,
              containerText: 'Aa',
              languageText: 'English',
              context: context,
            ),
            SizedBox(
              width: width / 6.5,
            ),
            LanguageColumn(
              onTap: () {
                cubit.changeLanguage(true);
              },
              check: cubit.index == 1 ? true : false,
              containerText: 'ض',
              languageText: 'العربية',
              context: context,
            )
          ],
        );
      },
    );
  }
}
