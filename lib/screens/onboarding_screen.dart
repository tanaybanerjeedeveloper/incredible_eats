import 'package:eat_incredible_app/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  //OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: controller,
        children: const [
          IntroScreen(
            backgroundImg: 'assets/images/firstintro.png',
            title: 'Discover Place Near You',
            subTitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit diam, imperdiet aliquam sit aliquam placerat in egestas ultrices',
          ),
          IntroScreen(
            backgroundImg: 'assets/images/secondintro.png',
            title: 'Order Your Favourite',
            subTitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit diam, imperdiet aliquam sit aliquam placerat in egestas ultrices',
          ),
          IntroScreen(
            backgroundImg: 'assets/images/thirdintro.png',
            title: 'Easy home delivery',
            subTitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit diam, imperdiet aliquam sit aliquam placerat in egestas ultrices',
          ),
        ],
      ),
      Positioned(
        top: mediaQuery.size.height * 0.78,
        left: 0,
        right: 0,
        child: Center(
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: const Color(0xffC4C4C4),
              dotHeight: 9.0,
              dotWidth: 9.0,
              activeDotColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
      )
    ]));
  }
}
