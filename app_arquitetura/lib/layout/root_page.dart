import 'package:app_arquitetura/pages/galeria_page.dart';
import 'package:app_arquitetura/pages/home_page.dart';
import 'package:app_arquitetura/pages/info_page.dart';
import 'package:app_arquitetura/pages/produto_page.dart';
import 'package:app_arquitetura/utils/color.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int index_color = 0;
  List Screen = [
    HomePage(),
    InfoPage(),
    ProdutoPage(),
    GaleriaPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        height: 80,
        decoration: BoxDecoration(
          color: primary,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: primary.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 0;
                });
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: index_color == 0 ? yellow : primary,
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? black : white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 1;
                });
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: index_color == 1 ? yellow : primary,
                child: Icon(
                  Icons.info,
                  size: 30,
                  color: index_color == 1 ? black : white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 2;
                });
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: index_color == 2 ? yellow : primary,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: index_color == 2 ? black : white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 3;
                });
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: index_color == 3 ? yellow : primary,
                child: Icon(
                  Icons.image,
                  size: 30,
                  color: index_color == 3 ? black : white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
