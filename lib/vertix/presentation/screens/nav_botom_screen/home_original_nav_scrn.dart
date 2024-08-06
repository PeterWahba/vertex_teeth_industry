import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertix/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';

import 'home_nav_scrns/home_screen.dart';
import 'list_order_page_view_screens/details_order_vertex_scrn.dart';
import 'list_order_page_view_screens/reject_order_msg_scrn.dart';

class HomeOriginNavBotomScreen extends StatelessWidget {
  HomeOriginNavBotomScreen({super.key});

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
              key: ValueKey(_navBottomController.currntindexHomeScrn),
              child:
                  siwthcPages(index: _navBottomController.currntindexHomeScrn),
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
        return HomeScreen();
      //
      case 1:
        return DetailsOrderVertexScreen();
      //
      case 2:
        return RejectOrderMessageScreen();
      //

      default:
        //
        return HomeScreen();
      //

      // End Switch
    }

    //
  }
}
