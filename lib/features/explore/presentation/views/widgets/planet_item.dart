import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/router.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_states.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../domain/entities/planet.dart';

class PlanetItem extends StatefulWidget {
  const PlanetItem({super.key, required this.planet, required this.index});
  final Planet planet;
  final int index;

  @override
  State<PlanetItem> createState() => _PlanetItemState();
}

class _PlanetItemState extends State<PlanetItem> {
  late final Flutter3DController flutter3dController;
  @override
  void initState() {
    super.initState();
    flutter3dController = Flutter3DController();
    flutter3dController.setCameraOrbit(20, 20, 5);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.planetDetailsView,
          extra: widget.planet,
        );
      },
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          padding: EdgeInsets.only(
            right: 16.w,
            left: 16.w,
            bottom: 16.w,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              BlocBuilder<LanguageCubit, LanguageStates>(
                builder: (context, state) {
                  return Positioned.directional(
                    end: 2,
                    start: 2,
                    top: widget.index == 1 ||
                            widget.index == 6 ||
                            widget.index == 8
                        ? -20
                        : -50.w,
                    textDirection:
                        LanguageCubit.of(context).locale.languageCode == 'en'
                            ? TextDirection.ltr
                            : TextDirection.rtl,
                    child: Image.asset(
                      widget.planet.imageNormal,
                      height: widget.index == 1 ||
                              widget.index == 8 ||
                              widget.index == 6
                          ? 100.w
                          : 180.w,
                      width: widget.index == 1 ||
                              widget.index == 8 ||
                              widget.index == 6
                          ? 150.w
                          : 150.w,
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.planet.name,
                        style: style16,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      widget.planet.description,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: style14Regular,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    // ),
  }
}

class Custom3dPreview extends StatelessWidget {
  const Custom3dPreview({
    super.key,
    required this.width,
    required this.height,
    required this.image,
  });

  final double width;
  final double height;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: Flutter3DViewer(
        src: image,
      ),
    );
  }
}
