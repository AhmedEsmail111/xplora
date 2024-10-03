import 'package:flutter/material.dart';
import 'package:xplora/core/utils/colors.dart';

import '../../../../../core/utils/text_styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Container(
              color: primaryColor.withOpacity(0.2),
              child: Text(
                'Cosmic Navigators🪐',
                textAlign: TextAlign.center,
                style: style20ExtraBold,
              ),
            ),
          );
        });
  }
}
