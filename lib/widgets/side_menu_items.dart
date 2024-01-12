import 'package:flutter/material.dart';
import 'package:fluttter_admin_dash/helpers/responsiveness.dart';
import 'package:fluttter_admin_dash/widgets/horizontal_menu_item.dart';
import 'package:fluttter_admin_dash/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
    final String itemName;
  final Function()? onTap;
  const SideMenuItem({super.key, required this.itemName, this.onTap});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomSize(context))
    return VerticalMenuItem(itemName: itemName ,onTap: onTap,);
    return HorizontalMenuItem(itemName: itemName,onTap: onTap,);
  }
}