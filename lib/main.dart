import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
          'コトシステム',
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0xD3673AB7),
                      ),
                      child: const Text(
                          """株式会社コトシステムはお客様に寄り添う形でWeb制作、スマートフォンアプリの開発及びサポートを行います。
  - フルスクラッチ開発
  - 調査・プロトタイプ作成
  - スポットとしてのチーム参加
お気軽にお問い合わせください。info@cotosystem.com""",
                          style: TextStyle(color: Color(0xFFFFFFFF)))),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      border: Border.all(
                        color: const Color(0xFF4D4C4C),
                      ),
                    ),
                    child: const Text("""会社概要
企業名 株式会社コトシステム
設立日 2018年12月21日
本社所在地 神奈川県川崎市高津区久本1-4-36 ARCUS-M 510
資本金 100万円
代表社員 金岡 勇佑
e-mail info@cotosystem.com"""),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0xC9717171),
                      ),
                      child: const Text("""Contact info@cotosystem.com
2018-2022 Cotosystem Co., Ltd""",
                          style: TextStyle(color: Color(0xFFFFFFFF)))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
