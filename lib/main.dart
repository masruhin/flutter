import 'package:e_branch/constrants.dart';
import 'package:e_branch/widget/bottom_nav_bar.dart';
import 'package:e_branch/widget/category_card.dart';
import 'package:e_branch/widget/webview_screen.dart';
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
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
              color: Color.fromARGB(255, 0, 78, 151),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                alignment: Alignment.topRight,
                image: AssetImage("assets/images/adiwernaa.png"),
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
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 51, 154, 252),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text("",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 30.0)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(29.5))),
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari Layanan",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: .95,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        CategoryCard(
                          title: "Tabungan",
                          svgSrc: "assets/icons/bank.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Tabungan",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/tabungan",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Deposito",
                          svgSrc: "assets/icons/dep.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Deposito",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/deposito",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Kredit",
                          svgSrc: "assets/icons/kredit.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Kredit",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/kredit",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Berita",
                          svgSrc: "assets/icons/berita.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Berita",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/berita",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Simulasi Kredit",
                          svgSrc: "assets/icons/simulasi.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Simulasi Kredit",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/simulasi-kredit",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Tentang Kami",
                          svgSrc: "assets/icons/tentangkami.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Tentang Kami",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/tentang-kami",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Medsos",
                          svgSrc: "assets/icons/instagram.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Media Sosial",
                                  selectedUrl:
                                      "https://www.instagram.com/nusambaadiwerna/",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Testimoni",
                          svgSrc: "assets/icons/testimoni.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Testimonial",
                                  selectedUrl:
                                      "https://bprnusamba-adiwerna.com/testimonial",
                                ),
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Hubungi",
                          svgSrc: "assets/icons/contact.svg",
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebviewScreen(
                                  title: "Hubungi Kami",
                                  selectedUrl: "https://www.digitalocean.com",
                                ),
                              ),
                            );
                          },
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
