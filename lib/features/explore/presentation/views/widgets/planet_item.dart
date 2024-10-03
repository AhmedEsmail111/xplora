import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/assets.dart';
import 'package:xplora/core/utils/router.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../domain/entities/planet.dart';

class PlanetItem extends StatefulWidget {
  const PlanetItem({super.key, required this.planet});
  final Planet planet;

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
        color: Theme.of(context).cardColor.withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          padding: EdgeInsets.only(
            right: 16.w,
            left: 16.w,
            bottom: 16.w,
          ),
          height: 120.w,
          width: 120.w,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.directional(
                end: -20.w,
                top: -20.w,
                textDirection: TextDirection.ltr,
                child: Image.asset(
                  planetImage,
                  height: 80.w,
                  width: 80.w,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.planet.name,
                    style: style17,
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
