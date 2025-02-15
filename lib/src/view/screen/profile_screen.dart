import 'package:flutter/material.dart';

import '../../../core/app_asset.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAsset.profilePic),
          const Text(
            "Tentang Kami",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const Text(
              "DolanYuh! adalah sebuah aplikasi yang menyediakan informasi lengkap mengenai berbagai destinasi wisata yang ada di daerah ngapak, Jawa Tengah.",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
