import 'package:flutter/material.dart';
import 'package:office_app_store/core/app_asset.dart';
import 'package:office_app_store/core/app_style.dart';

enum EmptyWidgetType { favorite }

class EmptyWidget extends StatelessWidget {
  final EmptyWidgetType type;
  final String title;

  const EmptyWidget({Key? key, this.type = EmptyWidgetType.favorite, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          type == EmptyWidgetType.favorite ? Image.asset(AppAsset.emptyFavorite) : Image.asset(AppAsset.emptyFavorite),
          const SizedBox(height: 10),
          Text(
            title,
            style: h2Style,
          )
        ],
      ),
    );
  }
}
