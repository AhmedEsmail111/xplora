import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/features/explore/domain/entities/galaxy.dart';

import '../../../../../core/utils/assets.dart';
import 'planet_item.dart';

class PlanetsViewBody extends StatelessWidget {
  const PlanetsViewBody({super.key, required this.galaxy});
  final Galaxy galaxy;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          skyImage,
          fit: BoxFit.cover,
        ),
        GridView.builder(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 40.h,
            bottom: 20.h,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: galaxy.planets.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30.w,
            crossAxisSpacing: 20.w,
          ),
          itemBuilder: (context, index) => PlanetItem(
            planet: galaxy.planets[index],
          ),
        ),
      ],
    );
  }
}






         // Positioned(
        //   top: 40.h,
        //   left: 2,
        //   right: 2,
        //   child: Material(
        //     color: Colors.black87,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(24),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Planets of ${galaxy.name}',
        //         style: style18ExtraBold,
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ),
        // ),