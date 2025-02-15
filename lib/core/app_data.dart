import 'package:flutter/material.dart';
import 'package:office_app_store/core/app_asset.dart';
import 'package:office_app_store/src/model/bottom_navigation_item.dart';
import 'package:office_app_store/src/model/furniture.dart';
import 'package:office_app_store/src/model/furniture_color.dart';

class AppData {
  const AppData._();

  static const dummyText =
      "";

  static List<Furniture> furnitureList = [
    Furniture(
      isFavorite: false,
      title: 'Baturaden',
      subtitle: 'Banyumas, Jawa Tengah',
      description: "Lokawisata Baturraden merupakan objek wisata yang terletak di sebelah utara kota Purwokerto, tepatnya di lereng sebelah selatan Gunung Slamet. Karena letaknya yang berada di ketinggian 750-900 mdpl menjadikan kawasan ini memiliki hawa yang sejuk dan cenderung sangat dingin terutama di malam hari. Baturraden juga merupakan daerah wisata yang banyak dikunjungi oleh wisatawan lokal, terutama pada hari minggu dan hari libur nasional. Kondisi tersebut menyebabkan banyak hotel dan vila didirikan di sini. Dari Baturraden, Anda dapat melihat pemandangan Kota Purwokerto.",

      images: [
        AppAsset.btr,
        AppAsset.btr2,
        AppAsset.btr3,

      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF616161), isSelected: true),
        FurnitureColor(color: const Color(0xFF424242)),
      ],
    ),
    Furniture(
      isFavorite: false,
      title: 'Dieng Plateau',
      subtitle: 'Banjarnegara, Jawa Tengah',
      description: 'Dataran tinggi Dieng atau Plato Dieng adalah sebuah wilayah di pusat Jawa Tengah yang memiliki ciri geologi, sejarah, dan pertanian yang dinilai khas. Dataran ini diapit oleh jajaran perbukitan di sisi utara dan selatannya, yang berasal dari aktivitas vulkanik yang sama dan disebut Pegunungan Dieng. Pegunungan Dieng sendiri secara geografis berada di antara kompleks Puncak Rogojembangan di sebelah barat dan pasangan Gunung Sindoro dan Gunung Sumbing di sisi timurnya. Secara kasar dapat dikatakan bahwa wilayah Dataran tinggi Dieng menempati kawasan berukuran lebar (utara–selatan) 4–6 km dan panjang (barat–timur) 11 km. Secara administrasi, dataran tinggi Dieng berada dalam wilayah Kecamatan Batur dan sebagian Kecamatan Pejawaran, Kabupaten Banjarnegara, Kecamatan Kejajar, Kabupaten Wonosobo, dan bagian selatan dari Desa Pranten, Bawang, Kabupaten Batang, dengan inti kawasan wisata berada pada wilayah Desa Dieng Kulon (di Banjarnegara) dan Desa Dieng ("Dieng Wetan" di Wonosobo). Ketinggian dataran berada pada 1600 sampai 2100 mdpl dengan arah aliran permukaan ke barat daya, menuju ke lembah Sungai Serayu. Dengan suhu udara berkisar 12–20 °C di siang hari dan 6–10 °C di malam hari, meskipun pada musim kemarau (Juli dan Agustus), suhu udara dapat mencapai 0 °C di pagi hari, iklim di dataran tinggi Dieng termasuk iklim subtropis dan memunculkan embun beku yang oleh penduduk setempat disebut bun upas ("embun racun") karena menyebabkan kerusakan pada tanaman pertanian. Meskipun cukup terpencil, dataran tinggi Dieng telah lama menjadi kawasan pemukiman. Sejumlah bangunan peninggalan abad ke-8 masih dapat ditemukan, baik dalam keadaan masih berdiri ataupun telah menjadi reruntuhan. Diperkirakan, bangunan-bangunan ini berasal dari masa Mataram Kuno awal. Terdapat indikasi bahwa penduduk kawasan ini berada pada pengaruh Kerajaan Sunda Galuh kuno sebelum kemudian dikuasai Medang.',

      images: [
        AppAsset.bjg,
        AppAsset.bjg2,
        AppAsset.bjg3,
      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
        FurnitureColor(color: const Color(0xFF424242)),
      ],
    ),
    Furniture(
      isFavorite: false,
      title: 'Lembah Asri',
      subtitle: 'Purbalingga, Jawa Tengah',
      description: 'Desa Wisata Lembah Asri Serang (D’las), Kecamatan Karangreja menjadi salah satu Daerah Tujuan Wisata yang banyak diminati oleh wisatawan ketika berkunjung ke Purbalingga. Lokasinya yang terletak di lereng Gunung Slamet menjadikan suasana di desa tersebut masih sangat asri sehingga wisatawan dapat menikmati udara sejuk pegunungan dan beristirahat sejenak dari ramainya perkotaan. Tanah yang subur juga mendukung sektor pertanian di desa tersebut sebagai penghasil sayur mayur dan buah buahan. Untuk menuju D’las dibutuhkan waktu sekitar 45 menit dari pusat kota yang dapat ditempuh dengan kendaraan roda dua maupun roda empat. Dengan harga Rp. 5000 pengunjung bisa menikmati keindahan alam yang ada di Desa Wisata Lembah Asri Serang, di lahan seluas 15 Ha ini wisatawan juga dapat mencoba berbagai wahana diantaranya Flying Fox, ATV, sepeda air, kereta wisata,  berkuda maupun memetik buah stroberi di Green House dengan harga yang bervariasi di setiap wahana mulai dari Rp. 5.000. Belakangan ini Lembah Asri Serang menambah wahana baru yaitu Dino Land yang menyediakan berbagai replika Dinosaurus yang dapat bergerak dan bersuara layaknya Dinosaurus sungguhan. Fasilitas yang ada di Desa Wisata serang cukup lengkap mulai dari gazebo, kamar mandi, mushola, cafe, meeting room dan Kolam renang. Bagi wisatawan yang ingin bermalam, Lembah asri serang juga menyediakan Cottage dengan design yang unik dan harga yang cukup terjangkau yaitu 850 ribu rupiah dengan kapasitas 4 orang.',

      images: [
        AppAsset.pbg,
        AppAsset.pbg2,
        AppAsset.pbg3,

      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF616161), isSelected: true),
        FurnitureColor(color: const Color(0xFF212121)),
      ],
    ),
    Furniture(
      isFavorite: false,
      title: 'Pantai Menganti',
      subtitle: 'Kebumen, Jawa Tengah',
      description: 'Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah. Bentang alam pada Pantai Menganti terdiri dari perbukitan dan pasir putih. Sejak tahun 2011, Pantai Menganti menjadi tempat wisata dan selancar, sekaligus pelabuhan dan pelelangan ikan. Pantai Menganti terletak di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah. Kawasan Pantai Menganti terdiri dari pasir putih dan perbukitan batu gamping. Letak Pantai Menganti berbatasan langsung dengan Samudra Hindia. Nama Menganti merupakan nama sebuah dukuh di Desa Karangduwur. Lokasinya sejauh tujuh kilometer dari Pantai Logending. Lahan yang disebut sebagai Pantai Menganti sangat sempit dan hanya mencakup bagian depan perbukitan Karet Gombong. Sebelum tahun 2011, Pantai Menganti hanya dimanfaatkan oleh nelayan sebagai pelabuhan dan tempat pelelangan ikan. Kemudian pada tahun 2011, Pantai Menganti ditetapkan sebagai tempat wisata bagi masyarakat umum. Bersamaan dengan fungsinya sebagai tempat wisata, Pantai Menganti juga menjadi tempat selancar oleh komunitas peselancar dari Kabupaten Sukabumi maupun dari Pulau Bali.',

      images: [
        AppAsset.keb,
        AppAsset.keb2,
        AppAsset.keb3,

      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF455a64), isSelected: true),
        FurnitureColor(color: const Color(0xFF263238)),
      ],
    ),
    Furniture(
      isFavorite: false,
      title: 'Pantai Teluk Penyu',
      subtitle: 'Cilacap, Jawa Tengah',
      description: 'Teluk Penyu merupakan kawasan pantai di selatan Kabupaten Cilacap, utamanya sepanjang pesisir dari Kecamatan Cilacap Selatan yang lokasinya tidak langsung berhubungan dengan Samudera India atau Indonesia karena dibentengi oleh Pulau Nusakambangan. Pantai Teluk Penyu berjarak 2 Km ke arah timur dari Pusat Pemerintahan Kabupaten Cilacap dan dapat dijangkau dengan kendaraan umum dan pribadi. Teluk ini cukup memiliki pemandangan yang indah dengan luas kira-kira 14 ha. Area Teluk Penyu yang biasa dikunjungi oleh para pengunjung (utamanya penduduk dan wisatawan lokal) biasanya mulai dari pelabuhan perikanan hingga bibir pantai yang biasa disebut Areal 70 (merujuk kepada sebutan masyarakat sekitar terhadap kawasan tangki-tangki penimbunan bahan bakar dari PT Pertamina UP IV) dimana para wisatawan atau pengunjung bisa melihat langsung Pulau Nusakambangan dari bibir pantai.',

      images: [
        AppAsset.clp,
        AppAsset.clp2,
        AppAsset.clp3,

      ],
      colors: <FurnitureColor>[
        FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
        FurnitureColor(color: const Color(0xFF455a64)),
      ],
    ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [BottomNavigationItem(const Icon(Icons.home), 'Jelajahi'), BottomNavigationItem(const Icon(Icons.bookmark), 'Dikunjungi'), BottomNavigationItem(const Icon(Icons.person), 'Profil')];
}
