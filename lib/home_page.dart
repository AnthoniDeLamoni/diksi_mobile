// import 'package:first_project/image2.dart';
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

  final List<Widget> imageSliderLists_3 = [
    Image_3(),
    Image_3(),
    Image_3(),
    Image_3()
  ];

  var imageSliderLists_1 = [
    Image_1(),
    Image_1(),
    Image_1(),
    Image_1(),
  ];

  List<String> str = [
    'Merangkum Materi di Bab 4',
    'Tugas Essay'
  ];

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                          color: Colors.transparent,
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
                      Container( // e-mading dan selengkapnya
                        child: Row(
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
                                    Image_1(),
                                    Image_1(),
                                    Image_1(),
                                    Image_1(),
                                  ],
                                ),
                                height: 185,
                              ),
                            ), // sliders
                            SizedBox(height: 8,),
                            Container(
                              margin: EdgeInsets.only(bottom: 14),
                              child: SmoothPageIndicator(
                                controller: _controller,
                                count: imageSliderLists_1.length,
                                effect: ScaleEffect(
                                  activeDotColor: Colors.grey,
                                  dotWidth: 3,
                                  dotHeight: 3,
                                  spacing: 4,
                                  dotColor: Color(0xFFC6C6C6),
                                ),
                              ),
                            )
                          ],
                        ),
                      ), // slider image
                      Container( // Jadwal hari ini dan selengkapnya
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.amber,
                              margin: EdgeInsets.only(left: 24.0, bottom: 9.0),
                              child: Text(
                                'Jadwal Hari Ini',
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
                      ), // jadwal dan selengkapnya
                      Container( // box jadwal pelajaran
                        margin: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row( // box cards
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox( // Kontainer box merah pelajaran
                                  width: 170,
                                  height: 144,
                                  child: Card(
                                    color: Color(0xFFFF5E48),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: 22.0,
                                        top: 16.0,
                                        left: 16.0,
                                        bottom: 16.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 37.0),
                                            child: Image.asset(
                                              'assets/math.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                          ), // Ikon
                                          Container( // pelajaran dan guru
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Matematika',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white
                                                  ),
                                                ),
                                                Text(
                                                  'Jane Doe S.Pd.',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0x80FFFFFF)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ) // Pelajaran & guru
                                        ],
                                      ),
                                    ),
                                  ),
                                ), // Kontainer box merah pelajaran
                                SizedBox( // Kontainer box merah pelajaran
                                  width: 170,
                                  height: 144,
                                  child: Card(
                                    color: Color(0xFF94B147),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                                    ),
                                    elevation: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: 22.0,
                                        top: 16.0,
                                        left: 16.0,
                                        bottom: 16.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 37.0),
                                            child: Image.asset(
                                              'assets/tree.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                          ), // Ikon
                                          Container( // pelajaran dan guru
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Biologi',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white
                                                  ),
                                                ),
                                                Text(
                                                  'John Doe S.Pd.',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0x80FFFFFF)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ) // Pelajaran & guru
                                        ],
                                      ),
                                    ),
                                  ),
                                ), // Kontainer box hijau pelajaran
                              ],
                            ), // box card pelajaran
                            Row( // tulisan keterangan
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container( // Keterangan matematika
                                  // color: Colors.green,
                                  margin: EdgeInsets.only(left: 10.0, right: 32.0),
                                  width: 144,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senin, 3 Desember',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat',
                                          color: Color(0x40000000)
                                        ),
                                      ),
                                      Text(
                                        'Mempelajari tentang bangun datar',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        '2 Jam Pelajaran',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Montserrat',
                                            color: Color(0x40000000)
                                        ),
                                      ),
                                    ],
                                  ),
                                ), // Keterangan matematika
                                Container( // Keterangan biologi
                                  // margin: EdgeInsets.only(right: 30.0),
                                  width: 132,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senin, 3 Desember',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Montserrat',
                                            color: Color(0x40000000)
                                        ),
                                      ),
                                      Text(
                                        'Ulangan fotosintesis',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        '2 Jam Pelajaran',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Montserrat',
                                            color: Color(0x40000000)
                                        ),
                                      ),
                                    ],
                                  ),
                                ), // Keterangan biologi
                              ],
                            ), // tulisan keterangan
                          ],
                        ),
                      ), // box jadwal pelajaran
                      Container( // mata pelajaran dan selengkapnya
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.amber,
                              margin: EdgeInsets.only(left: 24.0, bottom: 9.0),
                              child: Text(
                                'Mata Pelajaran',
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

                      ), // mata pelajaran dan selengkapnya
                      Container( // list tile pelajaran
                        margin: EdgeInsets.only(right: 24.0, left: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Card(
                                color: Colors.white70,
                                elevation: 1,
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0x26000000),
                                    size: 15.0,
                                    semanticLabel: 'More Content',
                                  ),
                                  title: Text(
                                    'Matematika',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000)
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Jane Doe S.Pd',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  leading: Container( // Symbol pelajaran
                                    width: 43.5,
                                    height: 43.5,
                                    child: Card(
                                      color: Color(0xFFFF5E48),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                                      ),
                                      child: Container(
                                        // width: 21,
                                        // height: 21,
                                        padding: EdgeInsets.all(11.25),
                                        child: Image.asset(
                                          'assets/math.png',
                                          width: 21,
                                          height: 21,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            ), // tile pelajaran
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Card(
                                color: Colors.white70,
                                elevation: 1,
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0x26000000),
                                    size: 15.0,
                                    semanticLabel: 'More Content',
                                  ),
                                  title: Text(
                                    'Matematika',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF000000)
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Jane Doe S.Pd',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  leading: Container( // Symbol pelajaran
                                    width: 43.5,
                                    height: 43.5,
                                    child: Card(
                                      color: Color(0xFFFF5E48),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                                      ),
                                      child: Container(
                                        // width: 21,
                                        // height: 21,
                                        padding: EdgeInsets.all(11.25),
                                        child: Image.asset(
                                          'assets/math.png',
                                          width: 21,
                                          height: 21,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            ), // tile pelajaran
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Card(
                                color: Colors.white70,
                                elevation: 1,
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0x26000000),
                                    size: 15.0,
                                    semanticLabel: 'More Content',
                                  ),
                                  title: Text(
                                    'Matematika',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF000000)
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Jane Doe S.Pd',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  leading: Container( // Symbol pelajaran
                                    width: 43.5,
                                    height: 43.5,
                                    child: Card(
                                      color: Color(0xFFFF5E48),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                                      ),
                                      child: Container(
                                        // width: 21,
                                        // height: 21,
                                        padding: EdgeInsets.all(11.25),
                                        child: Image.asset(
                                          'assets/math.png',
                                          width: 21,
                                          height: 21,
                                        ),
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            ), // tile pelajaran
                          ],
                        ),
                      ), // list tile pelajaran
                      Container( // mata pelajaran dan selengkapnya
                        margin: EdgeInsets.only(top: 16.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.amber,
                              margin: EdgeInsets.only(left: 24.0, bottom: 9.0),
                              child: Text(
                                'Tugas Hari Ini',
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

                      ), // tugas hari ini dan selengkapnya
                      Container( // list tile pelajaran
                        margin: EdgeInsets.only(right: 24.0, left: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Card(
                                color: Colors.white70,
                                elevation: 1,
                                child: Column(
                                  children: [
                                    ListTile(
                                      trailing: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color(0x26000000),
                                        size: 15.0,
                                        semanticLabel: 'More Content',
                                      ),
                                      title: Text(
                                        'Matematika',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF000000)
                                        ),
                                      ),
                                      subtitle: Text(
                                        'Jane Doe S.Pd',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0x80000000),
                                        ),
                                      ),
                                      leading: Container( // Symbol pelajaran
                                        width: 43.5,
                                        height: 43.5,
                                        child: Card(
                                          color: Color(0xFFFF5E48),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                                          ),
                                          child: Container(
                                            // width: 21,
                                            // height: 21,
                                            padding: EdgeInsets.all(11.25),
                                            child: Image.asset(
                                              'assets/math.png',
                                              width: 21,
                                              height: 21,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Divider(height: 0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0,),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 12.0),
                                        child: Column(
                                          children: str.map((strone) {
                                            return Row(
                                              children: [
                                                Text("\u2022",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ), //bullet text
                                                SizedBox(width: 10,), //space between bullet and text
                                                Expanded(
                                                  child:Text(strone,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ), //text
                                                )
                                              ],
                                            );
                                          }).toList()
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), // tile pelajaran
                          ],
                        ),
                      ), // tile tugas hari ini
                    ],
                  ), // Konten utama
                )



            ],
          ),
        ),
    );
  }
}
