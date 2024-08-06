// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:vertix/vertix/presentation/controller/list_order_controller/create_new_request_controlr.dart';

// import '../../../../core/utils/images_path_class.dart';
// import '../../../../core/widgets/methods_widgets.dart';
// import 'custom_build_tooth_position.dart';

// class CustomShowAllTeeth extends StatelessWidget {
//   CustomShowAllTeeth({super.key});

//   //
//   final CreateNewRequestController _createNewRequestController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 591.h,
//       child: GetBuilder<CreateNewRequestController>(
//           //
//           builder: (_) {
//         return Stack(
//           children: [
//             //

//             //
//             //  1
//             CustomBuildToothPosition(
//               numberImage: '18',
//               onTapCustomToothMethod: methodOnTapTooth('18'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('18')
//                   ? AppImages.teethGreen18
//                   : returnImage(
//                       numbrimage: '18',
//                       toothImageWhite: AppImages.teeth18,
//                       toothImageGreen: AppImages.teethGreen18,
//                       toothImageOrange: AppImages.teethOrange18,
//                       toothImageRed: AppImages.teethRed18,
//                     ),
//               hieghtImage: 46.33,
//               widthImage: 44.4,
//               topPosition: 234.3,
//               bottomPosition: 310.37,
//               leftPosition: 59.82,
//               rightPosition: 323.78,
//             ),

//             //
//             //  2
//             CustomBuildToothPosition(
//               numberImage: '17',
//               onTapCustomToothMethod: methodOnTapTooth('17'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('17')
//                   ? AppImages.teethGreen17
//                   : returnImage(
//                       numbrimage: '17',
//                       toothImageWhite: AppImages.teeth17,
//                       toothImageGreen: AppImages.teethGreen17,
//                       toothImageOrange: AppImages.teethOrange17,
//                       toothImageRed: AppImages.teethRed17,
//                     ),
//               hieghtImage: 45.04,
//               widthImage: 42.55,
//               topPosition: 193.06,
//               bottomPosition: 352.9,
//               leftPosition: 68.88,
//               rightPosition: 316.56,
//             ),

//             //
//             //  3
//             CustomBuildToothPosition(
//               numberImage: '16',
//               onTapCustomToothMethod: methodOnTapTooth('16'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('16')
//                   ? AppImages.teethGreen16
//                   : returnImage(
//                       numbrimage: '16',
//                       toothImageWhite: AppImages.teeth16,
//                       toothImageGreen: AppImages.teethGreen16,
//                       toothImageOrange: AppImages.teethOrange16,
//                       toothImageRed: AppImages.teethRed16,
//                     ),
//               hieghtImage: 51.13,
//               widthImage: 48.26,
//               topPosition: 149.4,
//               bottomPosition: 390.49,
//               leftPosition: 78.58,
//               rightPosition: 301.16,
//             ),

//             //
//             //  4
//             CustomBuildToothPosition(
//               numberImage: '15',
//               onTapCustomToothMethod: methodOnTapTooth('15'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('15')
//                   ? AppImages.teethGreen15
//                   : returnImage(
//                       numbrimage: '15',
//                       toothImageWhite: AppImages.teeth15,
//                       toothImageGreen: AppImages.teethGreen15,
//                       toothImageOrange: AppImages.teethOrange15,
//                       toothImageRed: AppImages.teethRed15,
//                     ),
//               hieghtImage: 41.6,
//               widthImage: 47.89,
//               topPosition: 116.93,
//               bottomPosition: 432.47,
//               leftPosition: 89.74,
//               rightPosition: 290.37,
//             ),

//             //
//             //  5
//             CustomBuildToothPosition(
//               numberImage: '14',
//               onTapCustomToothMethod: methodOnTapTooth('14'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('14')
//                   ? AppImages.teethGreen14
//                   : returnImage(
//                       numbrimage: '14',
//                       toothImageWhite: AppImages.teeth14,
//                       toothImageGreen: AppImages.teethGreen14,
//                       toothImageOrange: AppImages.teethOrange14,
//                       toothImageRed: AppImages.teethRed14,
//                     ),
//               hieghtImage: 41,
//               widthImage: 45.35,
//               topPosition: 88.47,
//               bottomPosition: 461.54,
//               leftPosition: 101.93,
//               rightPosition: 280.71,
//             ),

//             //
//             //  6
//             CustomBuildToothPosition(
//               numberImage: '13',
//               onTapCustomToothMethod: methodOnTapTooth('13'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('13')
//                   ? AppImages.teethGreen13
//                   : returnImage(
//                       numbrimage: '13',
//                       toothImageWhite: AppImages.teeth13,
//                       toothImageGreen: AppImages.teethGreen13,
//                       toothImageOrange: AppImages.teethOrange13,
//                       toothImageRed: AppImages.teethRed13,
//                     ),
//               hieghtImage: 36.2,
//               widthImage: 31.09,
//               topPosition: 63.14,
//               bottomPosition: 491.66,
//               leftPosition: 123.37,
//               rightPosition: 273.54,
//             ),

//             //
//             //  7
//             CustomBuildToothPosition(
//               numberImage: '12',
//               onTapCustomToothMethod: methodOnTapTooth('12'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('12')
//                   ? AppImages.teethGreen12
//                   : returnImage(
//                       numbrimage: '12',
//                       toothImageWhite: AppImages.teeth12,
//                       toothImageGreen: AppImages.teethGreen12,
//                       toothImageOrange: AppImages.teethOrange12,
//                       toothImageRed: AppImages.teethRed12,
//                     ),
//               hieghtImage: 34.04,
//               widthImage: 29.7,
//               topPosition: 41.18,
//               bottomPosition: 515.77,
//               leftPosition: 144.91,
//               rightPosition: 253.39,
//             ),

//             //
//             //  8
//             CustomBuildToothPosition(
//               numberImage: '11',
//               onTapCustomToothMethod: methodOnTapTooth('11'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('11')
//                   ? AppImages.teethGreen11
//                   : returnImage(
//                       numbrimage: '11',
//                       toothImageWhite: AppImages.teeth11,
//                       toothImageGreen: AppImages.teethGreen11,
//                       toothImageOrange: AppImages.teethOrange11,
//                       toothImageRed: AppImages.teethRed11,
//                     ),
//               hieghtImage: 52.56,
//               widthImage: 52.37,
//               topPosition: 16.36,
//               bottomPosition: 522.08,
//               leftPosition: 164.64,
//               rightPosition: 210.98,
//             ),

//             //
//             //  9
//             CustomBuildToothPosition(
//               numberImage: '21',
//               onTapCustomToothMethod: methodOnTapTooth('21'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('21')
//                   ? AppImages.teethGreen21
//                   : returnImage(
//                       numbrimage: '21',
//                       toothImageWhite: AppImages.teeth21,
//                       toothImageGreen: AppImages.teethGreen21,
//                       toothImageOrange: AppImages.teethOrange21,
//                       toothImageRed: AppImages.teethRed21,
//                     ),
//               hieghtImage: 52.92,
//               widthImage: 52.73,
//               topPosition: 16,
//               bottomPosition: 522.08,
//               leftPosition: 199.11,
//               rightPosition: 176.15,
//             ),

//             //
//             //  10
//             CustomBuildToothPosition(
//               numberImage: '22',
//               onTapCustomToothMethod: methodOnTapTooth('22'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('22')
//                   ? AppImages.teethGreen22
//                   : returnImage(
//                       numbrimage: '22',
//                       toothImageWhite: AppImages.teeth22,
//                       toothImageGreen: AppImages.teethGreen22,
//                       toothImageOrange: AppImages.teethOrange22,
//                       toothImageRed: AppImages.teethRed22,
//                     ),
//               hieghtImage: 34.39,
//               widthImage: 29.6,
//               topPosition: 40.02,
//               bottomPosition: 516.59,
//               leftPosition: 243.55,
//               rightPosition: 154.85,
//             ),

//             //
//             //  11
//             CustomBuildToothPosition(
//               numberImage: '23',
//               onTapCustomToothMethod: methodOnTapTooth('23'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('23')
//                   ? AppImages.teethGreen23
//                   : returnImage(
//                       numbrimage: '23',
//                       toothImageWhite: AppImages.teeth23,
//                       toothImageGreen: AppImages.teethGreen23,
//                       toothImageOrange: AppImages.teethOrange23,
//                       toothImageRed: AppImages.teethRed23,
//                     ),
//               hieghtImage: 36.58,
//               widthImage: 31.04,
//               topPosition: 64.28,
//               bottomPosition: 490.14,
//               leftPosition: 262.59,
//               rightPosition: 134.37,
//             ),

//             //
//             //  12
//             CustomBuildToothPosition(
//               numberImage: '24',
//               onTapCustomToothMethod: methodOnTapTooth('24'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('24')
//                   ? AppImages.teethGreen24
//                   : returnImage(
//                       numbrimage: '24',
//                       toothImageWhite: AppImages.teeth24,
//                       toothImageGreen: AppImages.teethGreen24,
//                       toothImageOrange: AppImages.teethOrange24,
//                       toothImageRed: AppImages.teethRed24,
//                     ),
//               hieghtImage: 41,
//               widthImage: 45.35,
//               topPosition: 88.47,
//               bottomPosition: 461.54,
//               leftPosition: 270.19,
//               rightPosition: 112.45,
//             ),

//             //
//             //  13
//             CustomBuildToothPosition(
//               numberImage: '25',
//               onTapCustomToothMethod: methodOnTapTooth('25'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('25')
//                   ? AppImages.teethGreen25
//                   : returnImage(
//                       numbrimage: '25',
//                       toothImageWhite: AppImages.teeth25,
//                       toothImageGreen: AppImages.teethGreen25,
//                       toothImageOrange: AppImages.teethOrange25,
//                       toothImageRed: AppImages.teethRed25,
//                     ),
//               hieghtImage: 42.03,
//               widthImage: 48.25,
//               topPosition: 116.5,
//               bottomPosition: 432.47,
//               leftPosition: 281.18,
//               rightPosition: 98.57,
//             ),

//             //
//             //  14
//             CustomBuildToothPosition(
//               numberImage: '26',
//               onTapCustomToothMethod: methodOnTapTooth('26'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('26')
//                   ? AppImages.teethGreen26
//                   : returnImage(
//                       numbrimage: '26',
//                       toothImageWhite: AppImages.teeth26,
//                       toothImageGreen: AppImages.teethGreen26,
//                       toothImageOrange: AppImages.teethOrange26,
//                       toothImageRed: AppImages.teethRed26,
//                     ),
//               hieghtImage: 51.25,
//               widthImage: 49.33,
//               topPosition: 149.29,
//               bottomPosition: 390.46,
//               leftPosition: 291.29,
//               rightPosition: 87.38,
//             ),

//             //
//             //  15
//             CustomBuildToothPosition(
//               numberImage: '27',
//               onTapCustomToothMethod: methodOnTapTooth('27'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('27')
//                   ? AppImages.teethGreen27
//                   : returnImage(
//                       numbrimage: '27',
//                       toothImageWhite: AppImages.teeth27,
//                       toothImageGreen: AppImages.teethGreen27,
//                       toothImageOrange: AppImages.teethOrange27,
//                       toothImageRed: AppImages.teethRed27,
//                     ),
//               hieghtImage: 45.04,
//               widthImage: 42.55,
//               topPosition: 193.06,
//               bottomPosition: 352.9,
//               leftPosition: 306.01,
//               rightPosition: 79.44,
//             ),

//             //
//             //  16
//             CustomBuildToothPosition(
//               numberImage: '28',
//               onTapCustomToothMethod: methodOnTapTooth('28'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('28')
//                   ? AppImages.teethGreen28
//                   : returnImage(
//                       numbrimage: '28',
//                       toothImageWhite: AppImages.teeth28,
//                       toothImageGreen: AppImages.teethGreen28,
//                       toothImageOrange: AppImages.teethOrange28,
//                       toothImageRed: AppImages.teethRed28,
//                     ),
//               hieghtImage: 46.33,
//               widthImage: 44.4,
//               topPosition: 233.54,
//               bottomPosition: 311.13,
//               leftPosition: 314.02,
//               rightPosition: 69.58,
//             ),

//             //
//             // ===============================================================
//             //
//             // Mandible Or Lower jaw
//             //

//             //

//             //
//             //  17
//             CustomBuildToothPosition(
//               numberImage: '38',
//               onTapCustomToothMethod: methodOnTapTooth('38'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('38')
//                   ? AppImages.teethGreen38
//                   : returnImage(
//                       numbrimage: '38',
//                       toothImageWhite: AppImages.teeth38,
//                       toothImageGreen: AppImages.teethGreen38,
//                       toothImageOrange: AppImages.teethOrange38,
//                       toothImageRed: AppImages.teethRed38,
//                     ),
//               hieghtImage: 46.09,
//               widthImage: 47.42,
//               topPosition: 296.55,
//               bottomPosition: 248.36,
//               leftPosition: 310.58,
//               rightPosition: 70,
//             ),

//             //
//             //  18
//             CustomBuildToothPosition(
//               numberImage: '37',
//               onTapCustomToothMethod: methodOnTapTooth('37'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('37')
//                   ? AppImages.teethGreen37
//                   : returnImage(
//                       numbrimage: '37',
//                       toothImageWhite: AppImages.teeth37,
//                       toothImageGreen: AppImages.teethGreen37,
//                       toothImageOrange: AppImages.teethOrange37,
//                       toothImageRed: AppImages.teethRed37,
//                     ),
//               hieghtImage: 46.32,
//               widthImage: 46.47,
//               topPosition: 341.09,
//               bottomPosition: 203.59,
//               leftPosition: 301.68,
//               rightPosition: 79.85,
//             ),

//             //
//             //  19
//             CustomBuildToothPosition(
//               numberImage: '36',
//               onTapCustomToothMethod: methodOnTapTooth('36'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('36')
//                   ? AppImages.teethGreen36
//                   : returnImage(
//                       numbrimage: '36',
//                       toothImageWhite: AppImages.teeth36,
//                       toothImageGreen: AppImages.teethGreen36,
//                       toothImageOrange: AppImages.teethOrange36,
//                       toothImageRed: AppImages.teethRed36,
//                     ),
//               hieghtImage: 52.08,
//               widthImage: 50.44,
//               topPosition: 382.93,
//               bottomPosition: 155.99,
//               leftPosition: 285.36,
//               rightPosition: 92.2,
//             ),

//             //
//             //  20
//             CustomBuildToothPosition(
//               numberImage: '35',
//               onTapCustomToothMethod: methodOnTapTooth('35'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('35')
//                   ? AppImages.teethGreen35
//                   : returnImage(
//                       numbrimage: '35',
//                       toothImageWhite: AppImages.teeth35,
//                       toothImageGreen: AppImages.teethGreen35,
//                       toothImageOrange: AppImages.teethOrange35,
//                       toothImageRed: AppImages.teethRed35,
//                     ),
//               hieghtImage: 46.34,
//               widthImage: 49.35,
//               topPosition: 426.42,
//               bottomPosition: 118.24,
//               leftPosition: 272.07,
//               rightPosition: 106.58,
//             ),

//             //
//             //  21
//             CustomBuildToothPosition(
//               numberImage: '34',
//               onTapCustomToothMethod: methodOnTapTooth('34'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('34')
//                   ? AppImages.teethGreen34
//                   : returnImage(
//                       numbrimage: '34',
//                       toothImageWhite: AppImages.teeth34,
//                       toothImageGreen: AppImages.teethGreen34,
//                       toothImageOrange: AppImages.teethOrange34,
//                       toothImageRed: AppImages.teethRed34,
//                     ),
//               hieghtImage: 32.66,
//               widthImage: 32.88,
//               topPosition: 464.21,
//               bottomPosition: 94.13,
//               leftPosition: 268.45,
//               rightPosition: 126.68,
//             ),

//             //
//             //  22
//             CustomBuildToothPosition(
//               numberImage: '33',
//               onTapCustomToothMethod: methodOnTapTooth('33'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('33')
//                   ? AppImages.teethGreen33
//                   : returnImage(
//                       numbrimage: '33',
//                       toothImageWhite: AppImages.teeth33,
//                       toothImageGreen: AppImages.teethGreen33,
//                       toothImageOrange: AppImages.teethOrange33,
//                       toothImageRed: AppImages.teethRed33,
//                     ),
//               hieghtImage: 43.56,
//               widthImage: 41.55,
//               topPosition: 483.8,
//               bottomPosition: 63.64,
//               leftPosition: 247.33,
//               rightPosition: 139.12,
//             ),

//             //
//             //  23
//             CustomBuildToothPosition(
//               numberImage: '32',
//               onTapCustomToothMethod: methodOnTapTooth('32'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('32')
//                   ? AppImages.teethGreen32
//                   : returnImage(
//                       numbrimage: '32',
//                       toothImageWhite: AppImages.teeth32,
//                       toothImageGreen: AppImages.teethGreen32,
//                       toothImageOrange: AppImages.teethOrange32,
//                       toothImageRed: AppImages.teethRed32,
//                     ),
//               hieghtImage: 35.43,
//               widthImage: 25.47,
//               topPosition: 505.97,
//               bottomPosition: 49.61,
//               leftPosition: 234.59,
//               rightPosition: 167.94,
//             ),

//             //
//             //  24
//             CustomBuildToothPosition(
//               numberImage: '31',
//               onTapCustomToothMethod: methodOnTapTooth('31'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('31')
//                   ? AppImages.teethGreen31
//                   : returnImage(
//                       numbrimage: '31',
//                       toothImageWhite: AppImages.teeth31,
//                       toothImageGreen: AppImages.teethGreen31,
//                       toothImageOrange: AppImages.teethOrange31,
//                       toothImageRed: AppImages.teethRed31,
//                     ),
//               hieghtImage: 33.78,
//               widthImage: 25.78,
//               topPosition: 513.53,
//               bottomPosition: 43.68,
//               leftPosition: 207.42,
//               rightPosition: 194.8,
//             ),

//             //
//             //  25
//             CustomBuildToothPosition(
//               numberImage: '41',
//               onTapCustomToothMethod: methodOnTapTooth('41'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('41')
//                   ? AppImages.teethGreen41
//                   : returnImage(
//                       numbrimage: '41',
//                       toothImageWhite: AppImages.teeth41,
//                       toothImageGreen: AppImages.teethGreen41,
//                       toothImageOrange: AppImages.teethOrange41,
//                       toothImageRed: AppImages.teethRed41,
//                     ),
//               hieghtImage: 33.78,
//               widthImage: 25.78,
//               topPosition: 513.53,
//               bottomPosition: 43.68,
//               leftPosition: 180.07,
//               rightPosition: 222.14,
//             ),

//             //
//             //  26
//             CustomBuildToothPosition(
//               numberImage: '42',
//               onTapCustomToothMethod: methodOnTapTooth('42'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('42')
//                   ? AppImages.teethGreen42
//                   : returnImage(
//                       numbrimage: '42',
//                       toothImageWhite: AppImages.teeth42,
//                       toothImageGreen: AppImages.teethGreen42,
//                       toothImageOrange: AppImages.teethOrange42,
//                       toothImageRed: AppImages.teethRed42,
//                     ),
//               hieghtImage: 35.43,
//               widthImage: 25.31,
//               topPosition: 505.97,
//               bottomPosition: 49.61,
//               leftPosition: 153.21,
//               rightPosition: 249.49,
//             ),

//             //
//             //  27
//             CustomBuildToothPosition(
//               numberImage: '43',
//               onTapCustomToothMethod: methodOnTapTooth('43'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('43')
//                   ? AppImages.teethGreen43
//                   : returnImage(
//                       numbrimage: '43',
//                       toothImageWhite: AppImages.teeth43,
//                       toothImageGreen: AppImages.teethGreen43,
//                       toothImageOrange: AppImages.teethOrange43,
//                       toothImageRed: AppImages.teethRed43,
//                     ),
//               hieghtImage: 42.79,
//               widthImage: 40.03,
//               topPosition: 483.21,
//               bottomPosition: 65,
//               leftPosition: 125.83,
//               rightPosition: 262.14,
//             ),

//             //
//             //  28
//             CustomBuildToothPosition(
//               numberImage: '44',
//               onTapCustomToothMethod: methodOnTapTooth('44'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('44')
//                   ? AppImages.teethGreen44
//                   : returnImage(
//                       numbrimage: '44',
//                       toothImageWhite: AppImages.teeth44,
//                       toothImageGreen: AppImages.teethGreen44,
//                       toothImageOrange: AppImages.teethOrange44,
//                       toothImageRed: AppImages.teethRed44,
//                     ),
//               hieghtImage: 31.02,
//               widthImage: 32.27,
//               topPosition: 466.93,
//               bottomPosition: 93.05,
//               leftPosition: 109.7,
//               rightPosition: 286.03,
//             ),

//             //
//             //  29
//             CustomBuildToothPosition(
//               numberImage: '45',
//               onTapCustomToothMethod: methodOnTapTooth('45'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('45')
//                   ? AppImages.teethGreen45
//                   : returnImage(
//                       numbrimage: '45',
//                       toothImageWhite: AppImages.teeth45,
//                       toothImageGreen: AppImages.teethGreen45,
//                       toothImageOrange: AppImages.teethOrange45,
//                       toothImageRed: AppImages.teethRed45,
//                     ),
//               hieghtImage: 45.18,
//               widthImage: 48.68,
//               topPosition: 429.37,
//               bottomPosition: 116.45,
//               leftPosition: 88.52,
//               rightPosition: 290.8,
//             ),

//             //
//             //  30
//             CustomBuildToothPosition(
//               numberImage: '46',
//               onTapCustomToothMethod: methodOnTapTooth('46'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('46')
//                   ? AppImages.teethGreen46
//                   : returnImage(
//                       numbrimage: '46',
//                       toothImageWhite: AppImages.teeth46,
//                       toothImageGreen: AppImages.teethGreen46,
//                       toothImageOrange: AppImages.teethOrange46,
//                       toothImageRed: AppImages.teethRed46,
//                     ),
//               hieghtImage: 52.08,
//               widthImage: 50.44,
//               topPosition: 384.48,
//               bottomPosition: 154.44,
//               leftPosition: 77.41,
//               rightPosition: 300.15,
//             ),

//             //
//             //  31
//             CustomBuildToothPosition(
//               numberImage: '47',
//               onTapCustomToothMethod: methodOnTapTooth('47'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('47')
//                   ? AppImages.teethGreen47
//                   : returnImage(
//                       numbrimage: '47',
//                       toothImageWhite: AppImages.teeth47,
//                       toothImageGreen: AppImages.teethGreen47,
//                       toothImageOrange: AppImages.teethOrange47,
//                       toothImageRed: AppImages.teethRed47,
//                     ),
//               hieghtImage: 45.93,
//               widthImage: 45.45,
//               topPosition: 341.92,
//               bottomPosition: 203.14,
//               leftPosition: 68.98,
//               rightPosition: 313.58,
//             ),

//             //
//             //  32
//             CustomBuildToothPosition(
//               numberImage: '48',
//               onTapCustomToothMethod: methodOnTapTooth('48'),
//               imageSvg: _createNewRequestController.isToothSelectedMethod('48')
//                   ? AppImages.teethGreen48
//                   : returnImage(
//                       numbrimage: '48',
//                       toothImageWhite: AppImages.teeth48,
//                       toothImageGreen: AppImages.teethGreen48,
//                       toothImageOrange: AppImages.teethOrange48,
//                       toothImageRed: AppImages.teethRed48,
//                     ),
//               hieghtImage: 46.09,
//               widthImage: 47.42,
//               topPosition: 295,
//               bottomPosition: 249.91,
//               leftPosition: 60,
//               rightPosition: 320.58,
//             ),

//             // End Children  Stack
//           ],
//         );
//       }),
//     );
//   }

//   //
//   methodOnTapTooth(String numberImage) {
//     //

//     //
//     String typeOperator =
//         _createNewRequestController.checkIFToothExistinLists(numberImage);

//     //
//     print('\n');
//     print('\n');
//     print('Screen The typeOperator is $typeOperator');
//     print('\n');
//     print('\n');

//     //
//     if (typeOperator == '') {
//       //
//       // _createNewRequestController.addEmptyToothToSelectedList(numberImage);
//       _createNewRequestController.addToothToGroupTeethList(numberImage);
//       //
//     } else if (typeOperator == 'before') {
//       //
//       _createNewRequestController.removeToothFromSelectedList(numberImage);
//       //
//     } else if (typeOperator == 'after') {
//       //
//       MethodsWidgetClass.dialogAskAreYouSure(
//         textM: '',
//         textDialog: 'هل تريد ازالة هـذا السن من المجموعة',
//         onTapM: () {
//           //
//           _createNewRequestController.removeToothFromListToothHistorLog(
//               numberImage, null);
//           //
//           Get.back();
//           //
//         },
//       );
//     } else if (typeOperator == 'after&&lastOne') {
//       //
//       //
//       MethodsWidgetClass.dialogAskAreYouSure(
//         textM: '',
//         textDialog: 'سيتم ازالة كافة المعلومات المرتبطة بهذا السن',
//         onTapM: () {
//           //
//           _createNewRequestController.removeToothFromListToothHistorLog(
//               numberImage, '');
//           //
//           Get.back();
//           //
//         },
//       );
//     }
//     //

//     //
//   }

//   //
//   String returnImage({
//     required String numbrimage,
//     required String toothImageWhite,
//     required String toothImageOrange,
//     required String toothImageGreen,
//     required String toothImageRed,
//   }) {
//     //
//     return _createNewRequestController
//                 .returnStateToothAccordingToGroup(numbrimage) ==
//             'good'
//         ? toothImageGreen
//         : _createNewRequestController
//                     .returnStateToothAccordingToGroup(numbrimage) ==
//                 'bad'
//             ? toothImageOrange
//             : _createNewRequestController
//                         .returnStateToothAccordingToGroup(numbrimage) ==
//                     'خطر'
//                 ? toothImageRed
//                 : toothImageWhite;
//     // end Return Image
//   }
// }
