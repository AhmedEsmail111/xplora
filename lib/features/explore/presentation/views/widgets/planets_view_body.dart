import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xplora/features/explore/presentation/manager/planets/planets_state.dart';
import 'package:xplora/features/explore/presentation/views/widgets/planet_item.dart';

import '../../../../../core/utils/assets.dart';
import '../../manager/planets/planets_cubit.dart';

class PlanetsViewBody extends StatelessWidget {
  const PlanetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlanetsCubit(context),
      child: BlocBuilder<PlanetsCubit, PlanetsStates>(
        builder: (context, state) {
          final planets = PlanetsCubit.of(context).planets;
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
                itemCount: planets.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30.w,
                  crossAxisSpacing: 20.w,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => PlanetItem(
                  planet: planets[index],
                  index: index,
                ),
              ),
            ],
          );
        },
      ),
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