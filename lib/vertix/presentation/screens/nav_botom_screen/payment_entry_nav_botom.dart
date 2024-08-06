import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertix/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import 'paymentEntry/details_payment_entry_scrn.dart';
import 'paymentEntry/walet_payment_nav_botom_scrn.dart';

class PaymentEntryNavBottomScreen extends StatelessWidget {
  PaymentEntryNavBottomScreen({super.key});

  //
  final NavBottomController _navBottomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        resizeToAvoidBottomInset: false,
        body: GetBuilder<NavBottomController>(builder: (_) {
          //
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              //
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1, 0), // Slide from top
                  end: Offset.zero,
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
              //
            },
            child: Container(
              key: ValueKey(_navBottomController.currntindexPaymentScrns),
              child: siwthcPages(
                  index: _navBottomController.currntindexPaymentScrns),
            ),
          );
        })

        // ),
        // End Scaffold
        );
  }

  Widget siwthcPages({required int index}) {
    //

    switch (index) {
      //
      case 0:
        return PaymentEntryUserScreen();
      //
      case 1:
        return DetailsPaymentEntryScreen();
      //

      default:
        //
        return PaymentEntryUserScreen();
      //

      // End Switch
    }

    //
  }
}
