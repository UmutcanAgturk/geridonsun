// ignore_for_file: unused_import, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geridonsun/constants.dart';
import 'package:geridonsun/screens/homepage.dart';
import 'package:geridonsun/screens/signingpage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: backarrow,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Kayıt Ol",
                            style: kHeadline,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Kayıt Olmak İçin Verileri Giriniz",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          TextField(
                            controller: username,
                            decoration: InputDecoration(
                                labelText: "Kullanıcı Adı",
                                border: myinputborder(),
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder()),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "EPosta",
                                border: myinputborder(),
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder()),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                              controller: password,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                labelText: "Şifre",
                                enabledBorder: myinputborder(),
                                focusedBorder: myfocusborder(),
                              ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hesabın Var Mı? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Giriş Yap',
                            style: kBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 50,
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextButton(
                          child: const Text("Kayıt Ol"),
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
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
