import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xplora/features/explore/presentation/views/widgets/planet_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  final List<String> images;
  final CarouselSliderController controller;

  final double height;
  final double width;
  final double viewPort;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  const CustomCarouselSlider({
    super.key,
    required this.images,
    required this.controller,
    required this.height,
    required this.width,
    this.onPageChanged,
    required this.viewPort,
  });
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      carouselController: controller,
      itemBuilder: (context, index, _) {
        return Container(
          width: width,
          height: height,
          color: Theme.of(context).cardColor,
          child: Custom3dPreview(
            width: (width - 50),
            height: (height - 50),
            image: images[index],
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        viewportFraction: viewPort,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
