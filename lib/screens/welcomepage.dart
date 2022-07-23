// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geridonsun/constants.dart';
import 'package:geridonsun/screens/registerpage.dart';
import 'package:geridonsun/screens/signingpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: [
                    const Center(),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      "Geri Dönsün",
                      style: kHeadline,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 2,
                      child: const Text(
                        "Geri Dönüşümü Reddetmeyin Dünya'ya Karşı Gelmeyin",
                        style: kBodyText2,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    Container(
                        child: Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 285.0,
                        width: 350.0,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.transparent, width: 3)),
                child: Column(
                  children: [
                    Expanded(
                        child: TextButton(
                      child: const Text("Kayıt ol"),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 25, fontStyle: FontStyle.italic)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const RegisterPage(),
                            ));
                      },
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.transparent, width: 3)),
                child: Column(
                  children: [
                    Expanded(
                        child: TextButton(
                      child: const Text("Giriş Yap"),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 25, fontStyle: FontStyle.italic)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const SignInPage(),
                            ));
                      },
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
