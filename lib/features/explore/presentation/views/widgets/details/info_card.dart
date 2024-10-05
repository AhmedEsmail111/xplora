import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/text_styles.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.planet});
  final String title;
  final String subtitle;
  final Planet planet;
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Material(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 16.w,
              bottom: 8.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: style17,
                ),
                const Icon(
                  Icons.info,
                  color: brightestColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: const Divider(),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 16.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '${locale.nick_name}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: planet.nickName,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                RichText(
                  text: TextSpan(
                    text: '${locale.type_in_card}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: locale.type,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                RichText(
                  text: TextSpan(
                    text: '${locale.temperature}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: planet.temperature,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                RichText(
                  text: TextSpan(
                    text: '${locale.size}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: planet.size,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                RichText(
                  text: TextSpan(
                    text: '${locale.discovery}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: planet.discoveryDate,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                RichText(
                  text: TextSpan(
                    text: '${locale.scientific_interest}:  ',
                    style: style15Regular,
                    children: [
                      TextSpan(
                        text: planet.scientificInterest,
                        style: style14Regular,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${locale.link}: ',
                      style: style15Regular,
                    ),
                    Flexible(
                      child: SelectableText(
                        planet.link,
                        maxLines: 3,
                        style: style14Regular,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
