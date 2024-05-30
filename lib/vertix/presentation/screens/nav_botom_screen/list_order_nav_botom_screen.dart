import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertex_teeth_industry/vertix/presentation/controller/nav_botom_controlr/nav_botom_controlr.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/list_order_page_view_screens/add_teeth_screen.dart';
import 'package:vertex_teeth_industry/vertix/presentation/screens/nav_botom_screen/list_order_page_view_screens/create_new_request_screen.dart';

import 'list_order_page_view_screens/list_order_page_view_screens.dart';

class ListOrderNavBotomScreen extends StatelessWidget {
  ListOrderNavBotomScreen({super.key});

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
            duration: Duration(milliseconds: 300),
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
              key: ValueKey(_navBottomController.currntindexListOrderScrn),
              child: siwthcPages(
                  index: _navBottomController.currntindexListOrderScrn),
            ),
          );
        })

        //  PageView(
        //   physics: const BouncingScrollPhysics(),
        //   //
        //   controller: _listOrderNavBottomController.controllerPage,
        //   //
        //   children: [
        //     //
        //     ListOrderPageViewScreen(),
        //     //
        //     CreateNewRequestScreenOri(),
        //     //
        //     ProfileScreen()
        //     //
        //     // End Children Page View
        //   ],
        //   // End Page View
        // ),
        // End Scaffold
        );
  }

  Widget siwthcPages({required int index}) {
    //

    switch (index) {
      //
      case 0:
        return ListOrderPageViewScreen();
      //
      case 1:
        return CreateNewRequestScreenOri();
      //
      case 2:
        return AddedTeeethsScreen();
      //

      default:
        //
        return ListOrderPageViewScreen();
      //

      // End Switch
    }

    //
  }
}
