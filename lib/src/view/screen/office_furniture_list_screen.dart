import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:office_app_store/core/app_data.dart';
import 'package:office_app_store/core/app_style.dart';
import 'package:office_app_store/src/model/furniture.dart';
import 'package:office_app_store/src/view/screen/office_furniture_detail_screen.dart';

import '../../../ui/login.dart';
import '../../../utils/routes.dart';
import '../widget/furniture_list_view.dart';

class OfficeFurnitureListScreen extends StatelessWidget {
  const OfficeFurnitureListScreen({Key? key}) : super(key: key);

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("DolanYuh!", style: h2Style),
                  Text("Dolan le men ra mumet", style: h3Style),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.logout),
                color: Colors.black87,
                onPressed: () async {
                  FirebaseAuth.instance
                      .signOut()
                      .then((value) => Navigator.pushAndRemoveUntil(
                          NAV_KEY.currentContext!,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                          (route) => false));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Nggolet',
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            suffixIcon: const Icon(Icons.menu, color: Colors.grey),
            contentPadding: const EdgeInsets.all(20),
            border: textFieldStyle,
            focusedBorder: textFieldStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<Widget?> _navigate(Furniture furniture) {
      return Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (_, __, ___) =>
              OfficeFurnitureDetailScreen(furniture: furniture),
        ),
      );
    }

    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            _searchBar(),
            FurnitureListView(
              furnitureList: AppData.furnitureList,
              onTap: _navigate,
            ),
            const Text("Rekomendasi", style: h2Style),
            FurnitureListView(
              furnitureList: AppData.furnitureList,
              isHorizontal: false,
              onTap: _navigate,
            ),
          ],
        ),
      ),
    );
  }
}
