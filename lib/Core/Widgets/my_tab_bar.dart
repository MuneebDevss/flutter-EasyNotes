import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../HelpingFunctions/helper_functions.dart';
import '../constants/color_palette.dart';
import '../constants/sizes.dart';
//ignore: must_be_immutable
class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  MyTabBar({
    super.key, required this.tabs,
  });
  final List<Tab> tabs;
  bool isDark=HelpingFunctions.isDarkMode(Get.context!);
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: isDark?TColors.black:TColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.grey,
        tabs:tabs ,),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(Sizes.appBarHeight);


}
