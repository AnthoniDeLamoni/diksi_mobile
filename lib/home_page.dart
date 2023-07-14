import 'package:first_project/image2.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:first_project/image1.dart';
import 'package:first_project/image3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            /* ---------------
              KONTAINER UNTUK
            * SEARCH BAR, PROFILE
            * ---------------*/
            Container( //Kontainer untuk search bar nama dll
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container( // Sized Box untuk dimensi
                    child: SizedBox(
                      height: 38,
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  ), // sized box untuk dimensi
                  Container( // side navbar sama profile
                    width: 360,
                    height: 48,
                    // color: Colors.blue,
                    margin: EdgeInsets.only(
                      left: 24.0,
                      top: 24.0,
                      right: 24.0,
                      bottom: 22.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Color(0xFF292929),
                        ),
                        CircleAvatar(
                          // child: Image.asset('assets/profile.png'),
                          backgroundImage: AssetImage('assets/profile.png'),
                          radius: 15,
                        )
                      ],
                    ), // row nya profile dan menu bar
                  ), // side navbar sama profile
                  Container( // Sapaan dan nama orang
                    height: 110,
                    width: 360,
                    // color: Colors.blue,
                    margin: EdgeInsets.only(
                      left: 24.0,
                      // top: 22.0,
                      bottom: 24.0,
                      right: 24.0,
                    ),
                    child: Column( // Sapaan ke user
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat pagi,',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF292929),
                          ),
                        ), // Tulisan selamat pagi
                        Text(
                          'John Doe!',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF292929),
                          ),
                        ), // Nama user
                        SizedBox(height: 8,),
                        Container(
                          child: TextField( // Search bar
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 10.0
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(width: 0.8),
                                ),
                                hintText: 'Cari Fitur, Nilai, Mapel, dll',
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x80292929),
                                ),
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.2),
                                suffixIcon: Icon(Icons.search, size: 12.0,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ), // sapaan dan nama orang
                ],
              ),
            ), // Kontainer untuk search bar nama dll


            /* ---------------
              KONTAINER UNTUK
            * KONTEN UTAMA
            * ---------------*/
            Container(
              color: Color.fromARGB(83, 225, 229, 232),
              padding: EdgeInsets.only(top: 16),
              child: Column( // Konten utama
                  children: [
                    Container(
                      child: Row( // e-mading dan selengkapnya
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.only(left: 24.0, bottom: 10.0),
                            child: Text(
                              'e-Mading',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ), // e-mading
                          Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.only(right: 24.0, bottom: 10.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'Selengkapnya >',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                            ),
                          ) // selengkapnya
                        ],
                      ),
                    ), // e-mading dan selengkapnya
                    Container( // slider image
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24.0, right: 24.0),
                            child: SizedBox(
                              child: PageView(
                                controller: _controller,
                                children: [
                                  Image_3(),
                                  Image_3()
                                ],
                              ),
                              height: 173,
                            ),
                          ), // sliders
                          SizedBox(height: 8,),
                          SmoothPageIndicator(
                            controller: _controller,
                            count: 2,
                            effect: JumpingDotEffect(
                              activeDotColor: Colors.pink
                            ),
                          )
                        ],
                      ),
                    ) // slider image
                  ],
                ), // Konten utama
              )



          ],
        ),
    );
  }
}
