import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/text_styles.dart';
import 'package:xplora/features/settings/presentation/manager/slider/slider_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/slider/slider_state.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubit, SliderStates>(
      builder: (context, state) {
        final sliderCubit = SliderCubit.of(context);
        return Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: sliderCubit.age == 12
                      ? null
                      : () {
                          sliderCubit.setAge(--sliderCubit.age);
                        },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Expanded(
                  child: Slider.adaptive(
                    activeColor: brightestColor,
                    min: 12,
                    max: 90,
                    value: sliderCubit.age,
                    onChanged: (newAge) {
                      sliderCubit.setAge(newAge);
                    },
                  ),
                ),
                IconButton(
                  onPressed: sliderCubit.age == 90
                      ? null
                      : () {
                          sliderCubit.setAge(++sliderCubit.age);
                        },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            Text(
              sliderCubit.age.toStringAsFixed(0),
              style: style16,
            )
          ],
        );
      },
    );
  }
}
