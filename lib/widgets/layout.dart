import 'package:flutter/material.dart';
import 'package:fluttter_admin_dash/helpers/responsiveness.dart';
import 'package:fluttter_admin_dash/widgets/large_screen.dart';
import 'package:fluttter_admin_dash/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(largeScreen: LargeScreen(),  smallScreen: SmallScreen(),)
    );
  }
}
