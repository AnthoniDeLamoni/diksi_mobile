import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

            )



          ],
        ),
    );
  }
}
