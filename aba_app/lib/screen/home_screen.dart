import 'package:aba_app/component_widget/blogContentAllFindNew.dart';
import 'package:aba_app/component_widget/coperateService.dart';
import 'package:aba_app/widget/AccountBalanceDetail.dart';
import 'package:aba_app/widget/advertisingImage.dart';
import 'package:aba_app/widget/contentFindNew.dart';
import 'package:aba_app/widget/headerProfile.dart';
import 'package:aba_app/widget/menuActivity.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> listService = [
    {"image": "assets/images/legend.jpg", "label": "Live. By"},
    {"image": "assets/images/live.jpg", "label": "Movie"},
    {"image": "assets/images/smart.png", "label": "Smart"},
    {"image": "assets/images/caption.jpg", "label": "VET Express"},
    {"image": "assets/images/metfone.jpg", "label": "Metfone"},
    {"image": "assets/images/movie.jpg", "label": "Cinema"}
  ];
  final List<Map<String, dynamic>> governmentServiceList = [
    {"image": "assets/images/pressway.png", "label": "Press way"},
    {"image": "assets/images/sabay1.png", "label": "Sabay"},
    {"image": "assets/images/bbs.png", "label": "National Security"},
    {"image": "assets/images/ama.png", "label": "Amazon"},
    {"image": "assets/images/ali.png", "label": "Alibaba"},
    {"image": "assets/images/sabay.png", "label": "Sabay"}
  ];
  final List<String> aBAImage = [
    "assets/images/aba/2.png",
    "assets/images/aba/1.png",
    "assets/images/aba/3.png",
    "assets/images/aba/4.png",
    "assets/images/aba/5.png",
    "assets/images/aba/44.webp",
    "assets/images/aba/55.webp",
    "assets/images/aba/66.webp",
    "assets/images/aba/77.webp",
  ];
  final List<String> nhams = [
    "assets/images/nham/1.webp",
    "assets/images/nham/2.webp",
    "assets/images/nham/3.webp",
    "assets/images/nham/4.webp",
    "assets/images/nham/5.webp",
    "assets/images/nham/6.webp",
    "assets/images/nham/7.webp",
    "assets/images/nham/8.webp",
    "assets/images/nham/9.webp",
    "assets/images/nham/10.webp",
    "assets/images/nham/11.webp",
    "assets/images/nham/12.webp",
    "assets/images/nham/14.webp",
    "assets/images/nham/15.webp",
    "assets/images/nham/16.webp",
  ];
  final List<String> vats = [
    "assets/images/vat/1.webp",
    "assets/images/vat/2.webp",
    "assets/images/vat/3.webp",
    "assets/images/vat/4.webp",
    "assets/images/vat/5.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 61, 80),
        actions: const [
          Icon(Icons.messenger_outline),
          SizedBox(width: 10),
          Icon(Icons.notification_important_outlined),
          SizedBox(width: 10),
          Icon(Icons.qr_code_sharp),
          SizedBox(width: 30)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 61, 80),
              Color.fromARGB(255, 10, 127, 163),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderProfile(),
              const SizedBox(height: 20),
              const Accountbalancedetail(),
              const SizedBox(height: 13),
              const MenuActivity(),
              const SizedBox(height: 20),
              const Advertisingimage(urlImage: "assets/images/aba_1.jpg"),
              const SizedBox(height: 20),
              CoperateService(
                isViewAll: true,
                label: "Explore Services",
                listServer: listService,
              ),
              const SizedBox(height: 20),
              CoperateService(
                isViewAll: true,
                label: "Government Services",
                listServer: governmentServiceList,
              ),
              const SizedBox(height: 20),
              const CoperateService(
                label: "Favorite",
                listServer: [
                  {
                    "image": "assets/images/sabay.png",
                    "label": "Sabay",
                  },
                ],
              ),
              const SizedBox(height: 20),
              BlogContentAllFindNew(listImages: aBAImage, label: "ABA Bank"),
              const SizedBox(height: 20),
              const Advertisingimage(urlImage: "assets/images/aba_2.jpg"),
              const SizedBox(height: 20),
              BlogContentAllFindNew(listImages: nhams, label: "Nham 24"),
              const SizedBox(height: 20),
              BlogContentAllFindNew(listImages: vats, label: "Vathanak Bank"),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
