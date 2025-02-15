import 'package:get/get.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/src/model/furniture.dart';

class OfficeFurnitureController extends GetxController {
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt currentPageViewItemIndicator = 0.obs;
  RxList<Furniture> cartFurniture = <Furniture>[].obs;
  RxList<Furniture> favoriteFurnitureList = <Furniture>[].obs;
  RxDouble totalPrice = 0.0.obs;

  switchBetweenBottomNavigationItems(int currentIndex) {
    currentBottomNavItemIndex.value = currentIndex;
  }

  switchBetweenPageViewItems(int currentIndex) {
    currentPageViewItemIndicator.value = currentIndex;
  }

  isFavoriteFurniture(Furniture furniture) {
    furniture.isFavorite = !furniture.isFavorite;
    update();
    if (furniture.isFavorite) {
      favoriteFurnitureList.add(furniture);
    }
    if (!furniture.isFavorite) {
      favoriteFurnitureList.removeWhere((element) => element == furniture);
    }
  }


  }



