import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_color.dart';
import 'package:office_app_store/core/app_data.dart';
import 'package:office_app_store/src/view/screen/favorite_screen.dart';
import 'package:office_app_store/src/view/screen/office_furniture_list_screen.dart';
import 'package:office_app_store/src/view/screen/profile_screen.dart';
import '../../controller/office_furniture_controller.dart';

final OfficeFurnitureController controller = Get.put(OfficeFurnitureController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List<Widget> screens = const [OfficeFurnitureListScreen(), FavoriteScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            currentIndex: controller.currentBottomNavItemIndex.value,
            showUnselectedLabels: true,
            onTap: controller.switchBetweenBottomNavigationItems,
            fixedColor: AppColor.lightBlack,
            items: AppData.bottomNavigationItems
                .map(
                  (element) => BottomNavigationBarItem(icon: element.icon, label: element.label),
                )
                .toList(),
          );
        },
      ),
      body: Obx(() => screens[controller.currentBottomNavItemIndex.value]),
    );
  }
}
