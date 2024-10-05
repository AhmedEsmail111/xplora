import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/router.dart';
import '../../../domain/entities/boarding_page_entity.dart';
import 'page_view_widget.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  var isLast = false;
  final List<BoardingPageEntity> onBoardingPagesData = [
    BoardingPageEntity(
      title: 'Welcome to Xplora',
      description:
          'Xplora is an interactive app that showcases exoplanets—planets outside our solar system—within the Milky Way galaxy through 3D models.\n It provides an engaging and easy-to-understand learning experience for users.',
      imageAsset: onBorading1Image,
    ),
    BoardingPageEntity(
      title: 'Purpose of the App',
      description:
          'Our goal is to simplify the exploration and understanding of exoplanets for a wide audience, from beginners to astronomy enthusiasts.',
      secondLineDescription:
          'We aim to inspire the next generation of space enthusiasts and scientists by offering an innovative educational journey through the mysteries of the universe.',
      imageAsset: onBoarding2Image,
    ),
    BoardingPageEntity(
      title: 'Key Features',
      description:
          'Xplora offers 3D models of each exoplanet, allowing users to interact with and explore planets from various angles.',
      secondLineDescription:
          'The app provides comprehensive details about each planet, such as size, distance from Earth, and discovery history.',
      imageAsset: onBoarding3Image,
    ),
    BoardingPageEntity(
      title: ' Future Plans',
      description:
          'We are working on integrating Virtual Reality (VR) into Xplora, enabling users to explore exoplanets in a more immersive and realistic manner.',
      secondLineDescription:
          'Future updates will include more exoplanets and galaxies, enhancing the educational experience.',
      imageAsset: onBoarding4Image,
    ),
    BoardingPageEntity(
      title: 'Team and Collaborators',
      description:
          'Xplora is brought to life by a passionate team, dedicated to making space exploration accessible to everyone.',
      secondLineDescription:
          'We collaborate with experts and educators to ensure the accuracy and quality of our content.',
      imageAsset: onBoarding5Image,
    ),
  ];
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                isLast = index == onBoardingPagesData.length - 1;
                setState(() {});
              },
              controller: _pageController,
              children: List.generate(
                5,
                (index) => PageViewWidget(
                  pageData: onBoardingPagesData[index],
                ),
              ),
            ),
          ),
          Row(
            children: [
              SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                  activeDotColor: brightestColor,
                  dotColor: secondaryColor,
                  dotWidth: 10,
                  dotHeight: 10,
                  spacing: 5,
                  expansionFactor: 4,
                ),
                controller: _pageController,
                count: onBoardingPagesData.length,
              ),
              const Spacer(),
              FloatingActionButton(
                onPressed: () {
                  if (isLast) {
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.galaxiesView);
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  isLast
                      ? Icons.keyboard_tab
                      : Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
