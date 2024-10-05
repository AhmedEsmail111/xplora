import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';

import 'details/arrow_back.dart';
import 'details/carousel_slider.dart';
import 'details/draggable_container.dart';

class PlanetDetailsViewBody extends StatefulWidget {
  const PlanetDetailsViewBody({super.key, required this.planet});

  final Planet planet;

  @override
  State<PlanetDetailsViewBody> createState() => _PlanetDetailsViewBodyState();
}

class _PlanetDetailsViewBodyState extends State<PlanetDetailsViewBody> {
  late final CarouselSliderController _sliderController;
  int sliderIndex = 1;
  @override
  void initState() {
    super.initState();

    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          CustomCarouselSlider(
            images: [widget.planet.image3d],
            controller: _sliderController,
            onPageChanged: (index, _) {
              sliderIndex = index;
              setState(() {});
            },
            height: 280.h,
            width: MediaQuery.of(context).size.width,
            viewPort: 1.0,
          ),
          // Positioned(
          //   width: MediaQuery.of(context).size.width,
          //   top: 275,
          //   child: Center(
          //     child: CustomIndicator(
          //       numberOfIndicators: widget.planet.images,
          //       controller: _sliderController,
          //       sliderIndex: sliderIndex,
          //       smoothColor: 0.6,
          //     ),
          //   ),
          // ),
          const ArrowBack(),
          DraggableContainer(
            planet: widget.planet,
          )
        ],
      ),
    );
  }
}
