import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/core/functions/methods_utls.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/list_order_controller/details_order_vertex_controlr.dart';

class CustomDetailsOrderVertexTeethSelectedOrder extends StatelessWidget {
  CustomDetailsOrderVertexTeethSelectedOrder({super.key});

  //
  final DetailsOrderVertexController _detailsOrderVertexController = Get.find();

  @override
  Widget build(BuildContext context) {
    return //

        SizedBox(
            height: 591.h,
            child: Stack(
              children: [
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '18',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 249,
                  botomPosition: 332,
                  rightPosition: 385,
                  leftPosition: 33,
                ),
                //
                //  18
                methodPositionedSvgTeeth(
                  numberImage: '18',
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '18',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  // _createNewRequestController.isToothSelectedMethod('18')
                  //     ?
                  // AppImages.teethGreen18,
                  // : returnImage(
                  //     numbrimage: '18',
                  //     toothImageWhite: AppImages.teeth18,
                  //     toothImageGreen: AppImages.teethGreen18,
                  //     toothImageOrange: AppImages.teethOrange18,
                  //     toothImageRed: AppImages.teethRed18,
                  //   ),
                  hieghtImage: 46.33,
                  widthImage: 44.4,
                  topPosition: 234.3,
                  bottomPosition: 310.37,
                  leftPosition: 59.82,
                  rightPosition: 323.78,
                ),

                //
                //  17
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '17',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 201,
                  botomPosition: 380,
                  rightPosition: 380,
                  leftPosition: 38,
                ),
                //
                //
                methodPositionedSvgTeeth(
                  numberImage: '17',
                  // imageSvg: AppImages.teethGreen17,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '17',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  hieghtImage: 45.04,
                  widthImage: 42.55,
                  topPosition: 193.06,
                  bottomPosition: 352.9,
                  leftPosition: 68.88,
                  rightPosition: 316.56,
                ),

                //
                //  16
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '16',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 151,
                  botomPosition: 430,
                  rightPosition: 370,
                  leftPosition: 48,
                ),
                //
                //
                methodPositionedSvgTeeth(
                  numberImage: '16',
                  hieghtImage: 51.13,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '16',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 48.26,
                  topPosition: 149.4,
                  bottomPosition: 390.49,
                  leftPosition: 78.58,
                  rightPosition: 301.16,
                ),

                //
                //  15
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '15',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 117,
                  botomPosition: 464,
                  rightPosition: 360,
                  leftPosition: 58,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '15',
                  hieghtImage: 41.6,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '15',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 47.89,
                  topPosition: 116.93,
                  bottomPosition: 432.47,
                  leftPosition: 89.74,
                  rightPosition: 290.37,
                ),

                //
                //  14
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '14',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 85,
                  rightPosition: 341,
                  leftPosition: 77,
                  botomPosition: 496,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '14',
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '14',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  hieghtImage: 41,
                  widthImage: 45.35,
                  topPosition: 88.47,
                  bottomPosition: 461.54,
                  leftPosition: 101.93,
                  rightPosition: 280.71,
                ),

                //
                //  13
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '13',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 53,
                  rightPosition: 320,
                  leftPosition: 98,
                  botomPosition: 528,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '13',
                  hieghtImage: 36.2,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '13',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 31.09,
                  topPosition: 63.14,
                  bottomPosition: 491.66,
                  leftPosition: 123.37,
                  rightPosition: 273.54,
                ),

                //
                //  12
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '12',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 26,
                  rightPosition: 282,
                  leftPosition: 136,
                  botomPosition: 555,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '12',
                  hieghtImage: 34.04,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '12',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 29.7,
                  topPosition: 41.18,
                  bottomPosition: 515.77,
                  leftPosition: 144.91,
                  rightPosition: 253.39,
                ),

                //
                //  11
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '11',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 8,
                  rightPosition: 234,
                  leftPosition: 184,
                  botomPosition: 573,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '11',
                  hieghtImage: 52.56,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '11',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 52.37,
                  topPosition: 16.36,
                  bottomPosition: 522.08,
                  leftPosition: 164.64,
                  rightPosition: 210.98,
                ),

                //
                //  21
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '21',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 8,
                  rightPosition: 187,
                  leftPosition: 231,
                  botomPosition: 573,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '21',
                  hieghtImage: 52.92,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '21',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 52.73,
                  topPosition: 16,
                  bottomPosition: 522.08,
                  leftPosition: 199.11,
                  rightPosition: 176.15,
                ),

                //
                //  22
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '22',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 26,
                  rightPosition: 137,
                  leftPosition: 281,
                  botomPosition: 555,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '22',
                  hieghtImage: 34.39,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '22',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 29.6,
                  topPosition: 40.02,
                  bottomPosition: 516.59,
                  leftPosition: 243.55,
                  rightPosition: 154.85,
                ),

                //
                //  23
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '23',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 53,
                  rightPosition: 107,
                  leftPosition: 311,
                  botomPosition: 528,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '23',
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '23',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  // imageSvg:
                  //  _createNewRequestController.isToothSelectedMethod('23')
                  //     ?
                  // AppImages.teethGreen23,
                  // : returnImage(
                  //   numbrimage: '23',
                  //   toothImageWhite: AppImages.teeth23,
                  //   toothImageGreen: AppImages.teethGreen23,
                  //   toothImageOrange: AppImages.teethOrange23,
                  //   toothImageRed: AppImages.teethRed23,
                  // ),
                  hieghtImage: 36.58,
                  widthImage: 31.04,
                  topPosition: 64.28,
                  bottomPosition: 490.14,
                  leftPosition: 262.59,
                  rightPosition: 134.37,
                ),

                //
                //  24
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '24',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 85,
                  rightPosition: 88,
                  leftPosition: 330,
                  botomPosition: 496,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '24',
                  hieghtImage: 41,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '24',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 45.35,
                  topPosition: 88.47,
                  bottomPosition: 461.54,
                  leftPosition: 270.19,
                  rightPosition: 112.45,
                ),

                //
                //  25
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '25',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 117,
                  rightPosition: 69,
                  leftPosition: 349,
                  botomPosition: 464,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '25',
                  hieghtImage: 42.03,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '25',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 48.25,
                  topPosition: 116.5,
                  bottomPosition: 432.47,
                  leftPosition: 281.18,
                  rightPosition: 98.57,
                ),

                //
                //  26
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '26',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 151,
                  rightPosition: 56,
                  leftPosition: 362,
                  botomPosition: 430,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '26',
                  hieghtImage: 51.25,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '26',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 49.33,
                  topPosition: 149.29,
                  bottomPosition: 390.46,
                  leftPosition: 291.29,
                  rightPosition: 87.38,
                ),

                //
                //  27
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '27',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 201,
                  rightPosition: 46,
                  leftPosition: 372,
                  botomPosition: 380,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '27',
                  hieghtImage: 45.04,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '27',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 42.55,
                  topPosition: 193.06,
                  bottomPosition: 352.9,
                  leftPosition: 306.01,
                  rightPosition: 79.44,
                ),

                //
                //  28
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '28',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 249,
                  rightPosition: 41,
                  leftPosition: 377,
                  botomPosition: 332,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '28',
                  hieghtImage: 46.33,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '28',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 44.4,
                  topPosition: 233.54,
                  bottomPosition: 311.13,
                  leftPosition: 314.02,
                  rightPosition: 69.58,
                ),

                //
                // ===============================================================
                //
                // Mandible Or Lower jaw
                //

                //

                //
                //  38
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '38',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 333,
                  rightPosition: 42,
                  leftPosition: 376,
                  botomPosition: 248,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '38',
                  hieghtImage: 46.09,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '38',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 47.42,
                  topPosition: 296.55,
                  bottomPosition: 248.36,
                  leftPosition: 310.58,
                  rightPosition: 70,
                ),

                //
                //  37
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '37',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 381,
                  rightPosition: 52,
                  leftPosition: 366,
                  botomPosition: 200,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '37',
                  hieghtImage: 46.32,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '37',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 46.47,
                  topPosition: 341.09,
                  bottomPosition: 203.59,
                  leftPosition: 301.68,
                  rightPosition: 79.85,
                ),

                //
                //  36
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '36',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 429,
                  rightPosition: 62,
                  leftPosition: 356,
                  botomPosition: 152,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '36',
                  hieghtImage: 52.08,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '36',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 50.44,
                  topPosition: 382.93,
                  bottomPosition: 155.99,
                  leftPosition: 285.36,
                  rightPosition: 92.2,
                ),

                //
                //  35
                //
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '35',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 468,
                  rightPosition: 72,
                  leftPosition: 339,
                  botomPosition: 113,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '35',
                  hieghtImage: 46.34,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '35',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 49.35,
                  topPosition: 426.42,
                  bottomPosition: 118.24,
                  leftPosition: 272.07,
                  rightPosition: 106.58,
                ),

                //
                //  34
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '34',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 499,
                  rightPosition: 97,
                  leftPosition: 321,
                  botomPosition: 82,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '34',
                  hieghtImage: 32.66,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '34',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 32.88,
                  topPosition: 464.21,
                  bottomPosition: 94.13,
                  leftPosition: 268.45,
                  rightPosition: 126.68,
                ),

                //
                //  33
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '33',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 536,
                  rightPosition: 123,
                  leftPosition: 295,
                  botomPosition: 45,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '33',
                  hieghtImage: 43.56,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '33',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 41.55,
                  topPosition: 483.8,
                  bottomPosition: 63.64,
                  leftPosition: 247.33,
                  rightPosition: 139.12,
                ),

                //
                //  32
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '32',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 563,
                  rightPosition: 154,
                  leftPosition: 264,
                  botomPosition: 18,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '32',
                  hieghtImage: 35.43,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '32',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 25.47,
                  topPosition: 505.97,
                  bottomPosition: 49.61,
                  leftPosition: 234.59,
                  rightPosition: 167.94,
                ),

                //
                //  31
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '31',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 573,
                  rightPosition: 196,
                  leftPosition: 222,
                  botomPosition: 8,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '31',
                  hieghtImage: 33.78,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '31',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 25.78,
                  topPosition: 513.53,
                  bottomPosition: 43.68,
                  leftPosition: 207.42,
                  rightPosition: 194.8,
                ),

                //
                //  41
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '41',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 573,
                  rightPosition: 228,
                  leftPosition: 190,
                  botomPosition: 8,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '41',
                  hieghtImage: 33.78,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '41',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 25.78,
                  topPosition: 513.53,
                  bottomPosition: 43.68,
                  leftPosition: 180.07,
                  rightPosition: 222.14,
                ),

                //
                //  42
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '42',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 563,
                  rightPosition: 269,
                  leftPosition: 149,
                  botomPosition: 18,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '42',
                  hieghtImage: 35.43,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '42',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 25.31,
                  topPosition: 505.97,
                  bottomPosition: 49.61,
                  leftPosition: 153.21,
                  rightPosition: 249.49,
                ),

                //
                //  43
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '43',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 536,
                  rightPosition: 306,
                  leftPosition: 112,
                  botomPosition: 45,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '43',
                  hieghtImage: 42.79,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '43',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 40.03,
                  topPosition: 483.21,
                  bottomPosition: 65,
                  leftPosition: 125.83,
                  rightPosition: 262.14,
                ),

                //
                //  44
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '44',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 499,
                  rightPosition: 331,
                  leftPosition: 87,
                  botomPosition: 82,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '44',
                  hieghtImage: 31.02,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '44',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 32.27,
                  topPosition: 466.93,
                  bottomPosition: 93.05,
                  leftPosition: 109.7,
                  rightPosition: 286.03,
                ),

                //
                //  45
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '45',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 468,
                  rightPosition: 349,
                  leftPosition: 69,
                  botomPosition: 113,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '45',
                  hieghtImage: 45.18,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '45',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 48.68,
                  topPosition: 429.37,
                  bottomPosition: 116.45,
                  leftPosition: 88.52,
                  rightPosition: 290.8,
                ),

                //
                //  46
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '46',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 429,
                  rightPosition: 361,
                  leftPosition: 57,
                  botomPosition: 152,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '46',
                  hieghtImage: 52.08,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '46',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 50.44,
                  topPosition: 384.48,
                  bottomPosition: 154.44,
                  leftPosition: 77.41,
                  rightPosition: 300.15,
                ),

                //
                //  47
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '47',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 381,
                  rightPosition: 371,
                  leftPosition: 47,
                  botomPosition: 200,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '47',
                  hieghtImage: 45.93,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '47',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 45.45,
                  topPosition: 341.92,
                  bottomPosition: 203.14,
                  leftPosition: 68.98,
                  rightPosition: 313.58,
                ),

                //
                //  48
                buildMethodGreyCircleTooth(
                  colorCircle: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          isCircle: '',
                          numberTooth: '48',
                          functionToothimageOrColor: MethodsClassUTls
                              .colorCircleToothAccordingToTypeProduct),
                  topPosition: 333,
                  rightPosition: 376,
                  leftPosition: 42,
                  botomPosition: 248,
                ),
                //
                methodPositionedSvgTeeth(
                  numberImage: '48',
                  hieghtImage: 46.09,
                  imageSvg: _detailsOrderVertexController
                      .changeImageToothAccordingToProductType(
                          numberTooth: '48',
                          functionToothimageOrColor: MethodsClassUTls
                              .imageToothAccordingToTypeProduct),
                  widthImage: 47.42,
                  topPosition: 295,
                  bottomPosition: 249.91,
                  leftPosition: 60,
                  rightPosition: 320.58,
                ),

                // End Children  Stack
              ],
            ));

    //;
  }

  //
  methodPositionedSvgTeeth({
    //
    required double topPosition,
    required double bottomPosition,
    required double leftPosition,
    required double rightPosition,
    required double hieghtImage,
    required double widthImage,
    required String numberImage,
    required String imageSvg,
    //
  }) {
    //
    return Positioned(
      top: topPosition.h,
      bottom: bottomPosition.h,
      left: leftPosition.w,
      right: rightPosition.w,
      child:

          //

          //

          SizedBox(
        height: hieghtImage.h,
        width: widthImage.w,
        child: SvgPicture.asset(imageSvg),
      ),
    );

    // End Method Positioned
  }

  buildMethodGreyCircleTooth({
    required double topPosition,
    required double botomPosition,
    required double rightPosition,
    required double leftPosition,
    required Color colorCircle,
  }) {
    return Positioned(
      top: topPosition.h,
      bottom: botomPosition.h,
      right: rightPosition.w,
      left: leftPosition.w,
      // ===================
      child: Container(
        height: 10.h,
        width: 10.w,
        decoration: BoxDecoration(shape: BoxShape.circle, color: colorCircle),
      ),
    );
  }

  //

  // String returnImage({
  //   required String numbrimage,
  //   required String toothImageWhite,
  //   required String toothImageOrange,
  //   required String toothImageGreen,
  //   required String toothImageRed,
  // }) {
  //   //
  //   return _createNewRequestController
  //               .returnStateToothAccordingToGroup(numbrimage) ==
  //           'good'
  //       ? toothImageGreen
  //       : _createNewRequestController
  //                   .returnStateToothAccordingToGroup(numbrimage) ==
  //               'bad'
  //           ? toothImageOrange
  //           : _createNewRequestController
  //                       .returnStateToothAccordingToGroup(numbrimage) ==
  //                   'خطر'
  //               ? toothImageRed
  //               : toothImageWhite;
  //   // end Return Image
  // }
}
