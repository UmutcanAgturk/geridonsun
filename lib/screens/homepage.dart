// ignore_for_file: unused_import, must_call_super, unnecessary_const, sort_child_properties_last

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geridonsun/constants.dart';
import 'package:geridonsun/screens/camera.dart';
import 'package:geridonsun/screens/maps.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Title(color: Colors.white, child: const Text("Geri Dönsün")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Kalabalıklaşan dünyamız nedeniyle her gün daha fazla tüketilen su, orman, madenler, petrol gibi doğal kaynaklarımızı geri dönüşüm ile daha uzun süreli kullanabiliriz. Tekrar değerlendirilebilen atıkları geri dönüştürerek doğal kaynaklarımızı tüketmeden yeni ürünler elde edebiliriz. Örneğin; bir ton kâğıdın geri dönüştürülmesiyle 17 ağacın kesilmesi önlenebilir. Plastik ambalaj atıklarının geri kazanılması sonucu ise petrolden tasarruf sağlanabilmektedir. Dönüşen her ton cam için ise, 100 litre petrol tasarrufu sağlanır. Metal ambalajları ve ahşap ambalajları geri dönüştürerek doğal alanlarımızı bozulmadan koruyabiliriz.",
                      style: kBodyText2,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/kagit.jpg",
                          height: 130,
                          width: 130,
                        ),
                        Image.asset(
                          "assets/images/plastik.jpg",
                          height: 130,
                          width: 130,
                        ),
                        Image.asset(
                          "assets/images/cam.jpg",
                          height: 130,
                          width: 130,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 150,
                                height: 50,
                                decoration: const BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0))),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                const CameraPage(),
                                          ));
                                    },
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ))),
                            Container(
                                width: 150,
                                height: 75,
                                decoration: const BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0))),
                                child: TextButton(
                                  child: const Text("Haritalar"),
                                  style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      textStyle: const TextStyle(
                                          fontSize: 25,
                                          fontStyle: FontStyle.italic)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) => const Maps(),
                                        ));
                                  },
                                ))
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
