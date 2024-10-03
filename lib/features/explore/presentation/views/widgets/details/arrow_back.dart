import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).pop();
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          width: 55.w,
          height: 55.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: secondaryColor,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.w, sigmaY: 10.w),
            child: Container(
              width: 55.w,
              height: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
