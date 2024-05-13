// screen/admin/home_screen.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_if22a/config/asset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Asset.colorPrimary,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromARGB(15, 0, 0, 0),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 27,
                    color: Color.fromARGB(15, 0, 0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Sale Today",
                style: TextStyle(
                  color: Asset.colorPrimaryDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 170,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      BeritaTerkini(
                        '../asset/images/vans1.png',
                        'Vans',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/nike1.jpg',
                        'Nike',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/adidas1.jpg',
                        'Adidas',
                        'Rp.200.000',
                      ),
                    ],
                    options: CarouselOptions(
                        height: 170,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Category",
                style: TextStyle(
                  color: Asset.colorPrimaryDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            50), // Setengah dari diameter avatar untuk membuatnya bundar
                        child: CircleAvatar(
                          radius: 50, // Radius avatar
                          child: Image.asset(
                              '../asset/images/nike.jpg'), // Isi avatar
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            50), // Setengah dari diameter avatar untuk membuatnya bundar
                        child: CircleAvatar(
                          radius: 50, // Radius avatar
                          child: Image.asset(
                              '../asset/images/adidas.jpg'), // Isi avatar
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            50), // Setengah dari diameter avatar untuk membuatnya bundar
                        child: CircleAvatar(
                          radius: 50, // Radius avatar
                          child: Image.asset(
                              '../asset/images/vans.png'), // Isi avatar
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Popoler",
                style: TextStyle(
                  color: Asset.colorPrimaryDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 170,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      BeritaTerkini(
                        '../asset/images/vans2.jpg',
                        'Vans',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/nike2.jpg',
                        'Nike',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/adidas2.jpg',
                        'Adidas',
                        'Rp.200.000',
                      ),
                    ],
                    options: CarouselOptions(
                        height: 170,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 170,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      BeritaTerkini(
                        '../asset/images/vans3.jpg',
                        'Vans',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/nike3.jpg',
                        'Nike',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/adidas3.jpeg',
                        'Adidas',
                        'Rp.200.000',
                      ),
                    ],
                    options: CarouselOptions(
                        height: 170,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 170,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      BeritaTerkini(
                        '../asset/images/vans1.png',
                        'Vans',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/nike1.jpg',
                        'Nike',
                        'Rp.200.000',
                      ),
                      BeritaTerkini(
                        '../asset/images/adidas1.jpg',
                        'Adidas',
                        'Rp.200.000',
                      ),
                    ],
                    options: CarouselOptions(
                        height: 170,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 1),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final int index;

  IconButton(this.nameLabel, this.iconLabel, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Asset.colorPrimaryDark,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

class BeritaTerkini extends StatelessWidget {
  final String img;
  final String judul;
  final String tanggal;

  BeritaTerkini(this.img, this.judul, this.tanggal);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Asset.colorPrimaryDark,
                    Colors.transparent,
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0.1, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    judul,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // alignment: Alignment(1, 1),
    );
  }
}
