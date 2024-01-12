import 'package:flutter/material.dart';
import 'package:fluttter_admin_dash/constants/controllers.dart';
import 'package:fluttter_admin_dash/constants/style.dart';
import 'package:fluttter_admin_dash/helpers/responsiveness.dart';
import 'package:fluttter_admin_dash/routing/routes.dart';
import 'package:fluttter_admin_dash/widgets/custom_text.dart';
import 'package:fluttter_admin_dash/widgets/side_menu_items.dart';

import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),

          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: sideMenuItems
          //       .map((itemName) => SideMenuItem(
          //             itemName: itemName == AuthenticationPageRoute
          //                 ? "Log Out"
          //                 : itemName,
          //             onTap: () {
          //               if (itemName == AuthenticationPageRoute) {
          //                 //todo :: go to authentication  page
          //               }
          //               if (!menuController.isActive(itemName)) {
          //                 menuController.changeActiveitemTo(itemName);
          //                 if (ResponsiveWidget.isSmallScreen(context))
          //                   Get.back();
          //                   //todo :: go to item name  route
          //               }
          //             },
          //           ))
          //       .toList(),
          // )

         
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
           Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {
                          //todo :: go to authentication  page
                        }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveitemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          //todo :: go to item name  route
                        }
                      },
                    ))
                .toList(),
          ),
//side menu
        ],
      ),
    );
  }
}
