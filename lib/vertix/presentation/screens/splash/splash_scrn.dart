import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vertex_teeth_industry/core/theme/colors_app.dart';

import '../../../../core/pages/pages_name.dart';
import '../../../../core/utils/fonts_path_class.dart';
import '../../../../core/utils/images_path_class.dart';

// Splash Screen With Image Scale And Text Animation

// import this Package in pubspec.yaml file
// dependencies:
//
//   animator: ^2.0.2

class SplashCustomScreen extends StatefulWidget {
  const SplashCustomScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashCustomScreenState createState() => _SplashCustomScreenState();
}

class _SplashCustomScreenState extends State<SplashCustomScreen> {
  @override
  void initState() {
    super.initState();
    //
    // Ensure that the system status bar and navigation bar are visible
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.top,
    ]);

    Timer(const Duration(milliseconds: 2700), () {
      setState(() {
        //
        // Move To Page OnBoarding

        //
        Get.offNamed(AllPagesName.onBoardScren);

        //
      });
    });
  }

  @override
  void dispose() {
    // Remove observer when the widget is disposed
    // WidgetsBinding.instance.removeObserver(this);
    //
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Start Children
            //

            SizedBox(
              height: 300.h,
            ),

            SlideFadeTransition(
              curve: Curves.elasticOut,
              // delayStart: const Duration(milliseconds: 300),
              delayStart: const Duration(milliseconds: 200),
              animationDuration: const Duration(milliseconds: 1200),
              offset: -2.5,
              direction: Direction.vertical,
              child: SizedBox(
                height: 200.h,
                width: 220.w,
                // child: SvgPicture.asset(AppImages.imageLogoSVG),
                child: Image.asset(AppImages.imageLoadingVertix),
              ),
            ),

            //
            //
            const Spacer(),

            //
            //
            SlideFadeTransition(
              curve: Curves.elasticOut,
              // delayStart: const Duration(milliseconds: 700),
              delayStart: const Duration(milliseconds: 500),
              animationDuration: const Duration(milliseconds: 1200),
              offset: 2.5,
              direction: Direction.horizontal,
              child:
                  //  AnimatedTextKit(
                  //   isRepeatingAnimation: true,
                  //   pause: const Duration(milliseconds: 200),
                  //   animatedTexts: [
                  //     ColorizeAnimatedText(
                  //       'Powred By MicroNext ',
                  //       colors: [
                  //         AppColors.textblackLight,
                  //         AppColors.silverColor,
                  //         AppColors.silverColor,
                  //         AppColors.textblackLight,
                  //       ],
                  //       textStyle: TextStyle(
                  //         fontSize: 22.sp,
                  //         fontFamily: AppFonts.almaraiBold,
                  //         // color: Colors.black,
                  //       ),
                  //     ),
                  //   ],
                  // )
                  Shimmer.fromColors(
                baseColor: AppColors.textblackLight,
                highlightColor: AppColors.purpleMainColor,
                child: Text(
                  'Powred By MicroNext ',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: AppFonts.almaraiBold,
                      color: Colors.black),
                ),
              ),
            ),

            SizedBox(
              height: 150.h,
            )

            //

            // End Children
          ],
        ),
      ),
    );
  }
}

enum Direction { vertical, horizontal }

class SlideFadeTransition extends StatefulWidget {
  final Widget child;

  final double offset;

  final Curve curve;

  final Direction direction;

  final Duration delayStart;

  final Duration animationDuration;

  const SlideFadeTransition({
    super.key,
    required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  });

  @override
  // ignore: library_private_types_in_public_api
  _SlideFadeTransitionState createState() => _SlideFadeTransitionState();
}

class _SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animationSlide;

  late AnimationController _animationController;

  late Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    if (widget.direction == Direction.vertical) {
      _animationSlide = Tween<Offset>(
              begin: Offset(0, widget.offset), end: const Offset(0, 0))
          .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    } else {
      _animationSlide = Tween<Offset>(
              begin: Offset(widget.offset, 0), end: const Offset(0, 0))
          .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    }

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

    Timer(widget.delayStart, () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}
