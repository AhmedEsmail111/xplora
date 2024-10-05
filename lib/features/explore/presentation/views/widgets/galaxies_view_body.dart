import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/features/explore/presentation/views/widgets/galaxy_item.dart';

import '../../../../../core/utils/assets.dart';

class GalaxiesViewBody extends StatelessWidget {
  const GalaxiesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          galaxyViewBackground,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 24.h,
          ),
          child: const Stack(
            fit: StackFit.loose,
            children: [
              GalaxyItem(),
            ],
          ),
        ),
      ],
    );
  }
}
