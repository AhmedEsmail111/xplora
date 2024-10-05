import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/router.dart';

import '../../../../../core/utils/text_styles.dart';

class GalaxyItem extends StatelessWidget {
  const GalaxyItem({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.planetsView,
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 10.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25,
          ),
          color: lighterDarkColor.withOpacity(0.8),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 20.h,
            top: 20.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                locale.milk_galaxy,
                style: style17,
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                locale.milk_galaxy_info1,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: style14Regular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/*

 Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          galaxy.name,
                          style: style17,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          galaxy.description,
                          softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: style15Bold,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Planets: ',
                                style: style14Regular,
                                children: [
                                  TextSpan(
                                    text: '${galaxy.numberOfPlanets} 🌏',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Stars: ',
                                style: style14Regular,
                                children: [
                                  TextSpan(
                                    text: '${galaxy.numberOfStars} ⭐',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        optionsBackgroundImage,
                        fit: BoxFit.cover,
                        height: 85.h,
                      ),
                    ),
                  )
                ],
              ),
*/