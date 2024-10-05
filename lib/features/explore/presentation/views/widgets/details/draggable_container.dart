import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/text_styles.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';
import 'package:xplora/features/explore/presentation/views/widgets/details/info_card.dart';

class DraggableContainer extends StatelessWidget {
  final Planet planet;
  const DraggableContainer({super.key, required this.planet});
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.9,
      minChildSize: 0.6,
      builder: ((context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16.h, bottom: 32.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5),
                        ),
                        height: 5.h,
                        width: 32.w,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    planet.name,
                    style: style22,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Divider(),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  locale.description,
                  style: style18ExtraBold,
                ),

                SizedBox(
                  height: 8.h,
                ),
                Text(
                  planet.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                  overflow: TextOverflow.visible,
                  maxLines: null,
                ),
                SizedBox(
                  height: 24.h,
                ),
                // const InfoListTile(
                //   title: 'Introduction',
                //   subtitle: '',
                // ),
                // SizedBox(
                //   height: 12.h,
                // ),
                InfoCard(
                  title: "${locale.facts_about} ${planet.name}",
                  subtitle: '',
                  planet: planet,
                ),

                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
