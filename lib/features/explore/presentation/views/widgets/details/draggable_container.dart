import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/core/utils/text_styles.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';
import 'package:xplora/features/explore/presentation/views/widgets/details/info_list_tile.dart';

class DraggableContainer extends StatelessWidget {
  final Planet planet;
  const DraggableContainer({super.key, required this.planet});
  @override
  Widget build(BuildContext context) {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      planet.name,
                      style: style22,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor.withOpacity(0.7),
                            foregroundColor: Colors.white,
                            shape: roundedBorder8Radius),
                        onPressed: () {},
                        label: Text(
                          'Universe Mode',
                          style: style15Bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Description',
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
                const InfoListTile(),
                SizedBox(
                  height: 12.h,
                ),
                const InfoListTile(),
                SizedBox(
                  height: 12.h,
                ),
                const InfoListTile(),
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
