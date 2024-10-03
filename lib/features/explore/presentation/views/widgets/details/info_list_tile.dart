import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/text_styles.dart';

class InfoListTile extends StatelessWidget {
  const InfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        leading: const Icon(
          Icons.info,
          color: brightestColor,
        ),
        title: Text(
          'Introduction',
          style: style18ExtraBold,
        ),
        subtitle: Text(
          '3 videos',
          style: style14Regular.copyWith(
            color: Colors.white60,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
