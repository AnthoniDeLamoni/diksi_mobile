import 'package:flutter/material.dart';

class Image_2 extends StatelessWidget {
  const Image_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          width: 312,
          height: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              image: AssetImage('assets/exam.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Positioned(
                left: 0.1,
                right: 110,
                child: Container(
                  width: 175,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF5864D3),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '#pekanujian',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Klik untuk Lihat Jadwal!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Image.asset('assets/exam.png')