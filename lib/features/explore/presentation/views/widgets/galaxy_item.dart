import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/assets.dart';
import 'package:xplora/core/utils/router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../domain/entities/galaxy.dart';

class GalaxyItem extends StatelessWidget {
  const GalaxyItem({super.key, required this.galaxy});
  final Galaxy galaxy;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.planetsView,
          extra: galaxy,
        );
      },
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: primaryColor,
        child: Container(
          margin: EdgeInsets.only(
            top: 55.h,
          ),
          height: 210.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25,
            ),
            color: Theme.of(context).cardColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -75.w,
                  left: 2,
                  right: 2,
                  child: SizedBox(
                    width: 200.w,
                    height: 200.w,
                    child: Image.asset(
                      galaxyImage,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      style: style15Regular,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Planets: ',
                            style: style13,
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
                            style: style13,
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
              ],
            ),
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