import 'package:cotosys_corp/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '株式会社コトシステム',
      theme: themeData,
      home: HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  HomePageWidget({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).primaryColor,
        backgroundColor: const Color(0xFFFFFFFF),
        // backgroundColor: const Color(0xFF673AB7),
        automaticallyImplyLeading: false,
        title: const Text(
          '株式会社コトシステム',
          style: TextStyle(color: Color(0xFF673AB7)),
          // style: Theme.of(context).title2.override(
          //       fontFamily: 'Poppins',
          //       color: Colors.white,
          //       fontSize: 22,
          //     ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      // backgroundColor: Theme.of(context).primaryBackground,
      // endDrawer: SizedBox(
      //   width: 100,
      //   child: Drawer(
      //     elevation: 16,
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       scrollDirection: Axis.vertical,
      //       children: const [
      //         Text(
      //           'Top',
      //           // style: Theme.of(context).bodyText1,
      //         ),
      //         Text(
      //           'Works',
      //           // style: Theme.of(context).bodyText1,
      //         ),
      //         Text(
      //           'Contact',
      //           // style: Theme.of(context).bodyText1,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xD3673AB7),
                    ),
                    child: Column(
                      children: [
                        const Text(
                            "株式会社コトシステムはお客様に寄り添う形でWeb制作、スマートフォンアプリの開発及びサポートを行います。",
                            style: TextStyle(color: Color(0xFFFFFFFF))),
                        const Text(""" - フルスクラッチ開発
  - 調査・プロトタイプ作成
  - スポットとしてのチーム参加""", style: TextStyle(color: Color(0xFFFFFFFF))),
                        const Text("お気軽にお問い合わせください。info@cotosystem.com",
                            style: TextStyle(color: Color(0xFFFFFFFF))),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    border: Border.all(
                      color: const Color(0xFF4D4C4C),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text("会社概要"),
                      const Text("企業名 株式会社コトシステム"),
                      const Text("設立日 2018年12月21日"),
                      const Text("本社所在地 神奈川県川崎市高津区久本1-4-36 ARCUS-M 510"),
                      const Text("資本金 100万円"),
                      const Text("代表社員 金岡 勇佑"),
                      const Text("e-mail info@cotosystem.com"),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    decoration: const BoxDecoration(
                      color: Color(0xC9717171),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // これで両端に寄せる
                      children: [
                        const Text(
                            "株式会社コトシステム Copyright © 2018-2022 Cotosystem Co., Ltd. All rights reserved.",
                            style: TextStyle(color: Color(0xFFFFFFFF))),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
