import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/features/explore/presentation/views/widgets/galaxy_item.dart';

class GalaxiesViewBody extends StatelessWidget {
  const GalaxiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.w,
        right: 32.w,
        top: 16.h,
        bottom: 12.h,
      ),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: galaxies.length,
        itemBuilder: (context, index) => GalaxyItem(
          galaxy: galaxies[index],
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 12.h,
        ),
      ),
    );
  }
}
