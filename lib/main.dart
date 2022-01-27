import 'package:e_branch/constrants.dart';
import 'package:e_branch/widget/bottom_nav_bar.dart';
import 'package:e_branch/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  //test commit
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 31, 143, 247),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/bpr.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 9, 132, 247),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text("",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 30.0)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(29.5))),
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: .85,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/bank.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Deposito.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "",
                          svgSrc: "assets/icons/Kredit.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
