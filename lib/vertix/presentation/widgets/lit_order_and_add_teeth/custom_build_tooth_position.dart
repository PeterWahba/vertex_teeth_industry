// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class CustomBuildToothPosition extends StatelessWidget {
//   const CustomBuildToothPosition(
//       {super.key,
//       required this.topPosition,
//       required this.bottomPosition,
//       required this.leftPosition,
//       required this.rightPosition,
//       required this.hieghtImage,
//       required this.widthImage,
//       required this.numberImage,
//       required this.onTapCustomToothMethod,
//       required this.imageSvg});

//   //
//   final double topPosition;
//   final double bottomPosition;
//   final double leftPosition;
//   final double rightPosition;
//   final double hieghtImage;
//   final double widthImage;
//   final String numberImage;
//   final String imageSvg;
//   final void Function()? onTapCustomToothMethod;

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: topPosition.h,
//       bottom: bottomPosition.h,
//       left: leftPosition.w,
//       right: rightPosition.w,
//       child: ZoomTapAnimation(
//         child: InkWell(
//           //
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           //
//           onTap: onTapCustomToothMethod,
//           //
//           child: SizedBox(
//             height: hieghtImage.h,
//             width: widthImage.w,
//             child: SvgPicture.asset(imageSvg),
//           ),
//         ),
//       ),
//     );
//   }
// }
