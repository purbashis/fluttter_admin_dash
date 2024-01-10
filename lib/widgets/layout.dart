import 'package:flutter/material.dart';
import 'package:fluttter_admin_dash/helpers/responsiveness.dart';
import 'package:fluttter_admin_dash/widgets/large_screen.dart';
import 'package:fluttter_admin_dash/widgets/small_screen.dart';
import 'package:fluttter_admin_dash/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final  GlobalKey<ScaffoldState>scafflodKey = GlobalKey();
    return Scaffold(
      key: scafflodKey,
      appBar: topNavigationBar(context, scafflodKey),
      drawer: Drawer(

      ),
      body: ResponsiveWidget(largeScreen: LargeScreen(),  smallScreen: SmallScreen(),)
    );
  }
}
