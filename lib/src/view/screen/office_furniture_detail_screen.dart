import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:office_app_store/core/app_color.dart';
import 'package:office_app_store/core/app_extension.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/controller/office_furniture_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/furniture.dart';
import 'home_screen.dart';

class OfficeFurnitureDetailScreen extends StatelessWidget {
  final Furniture furniture;

  const OfficeFurnitureDetailScreen({Key? key, required this.furniture}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      actions: [
        GetBuilder(
          builder: (OfficeFurnitureController controller) {
            return IconButton(
              splashRadius: 18.0,
              onPressed: () => controller.isFavoriteFurniture(furniture),
              icon: furniture.isFavorite ? const Icon(Icons.bookmark, color: Colors.black) : const Icon(Icons.bookmark_border, color: Colors.black),
            );
          },
        )
      ],
      leading: IconButton(
        icon: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        onPressed: () {
          controller.currentPageViewItemIndicator.value = 0;
          Navigator.pop(context);
        },
      ),
      title: Text(furniture.title, style: h2Style),
    );
  }



  Widget furnitureImageSlider(double height) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      height: height * 0.5,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            onPageChanged: controller.switchBetweenPageViewItems,
            itemCount: furniture.images.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: index,
                    child: Image.asset(
                      furniture.images[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            child: Obx(
              () {
                return SmoothIndicator(
                    effect: const WormEffect(dotColor: Colors.white38, activeDotColor: Colors.white),
                    // ),
                    // offset: selectedPageViewIndex.toDouble(),
                    offset: controller.currentPageViewItemIndicator.value.toDouble(),
                    count: furniture.images.length);
              },
            ),
          ),
        ],
        // ).fadeAnimation(0.2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        controller.currentPageViewItemIndicator.value = 0;
        return Future.value(true);
      },
      child: Scaffold(
        appBar: _appBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                furnitureImageSlider(height),
                Center(

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(furniture.subtitle, style: h2Style).fadeAnimation(0.6),
                ),
                Text(furniture.description, maxLines: 90, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.black45)).fadeAnimation(0.8),

                Row(
                  children: [],
                ).fadeAnimation(1.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
