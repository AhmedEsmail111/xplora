import 'package:flutter/material.dart';
import 'package:xplora/core/utils/text_styles.dart';

import '../../../../../core/utils/colors.dart';

class LanguageColumn extends StatelessWidget {
  final String containerText;
  final String languageText;
  final BuildContext context;
  final VoidCallback onTap;
  final bool check;

  const LanguageColumn(
      {super.key,
      required this.containerText,
      required this.context,
      required this.onTap,
      required this.check,
      required this.languageText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Card(
            color: brightestColor,
            shape: RoundedRectangleBorder(
              side: check
                  ? const BorderSide(color: Colors.white, width: 3)
                  : const BorderSide(),
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.height / 10,
              child: Text(
                containerText,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Text(
          languageText,
          style: style16,
        )
      ],
    );
  }
}
