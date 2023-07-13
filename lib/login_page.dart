import 'package:first_project/register_page.dart';
import 'package:flutter/material.dart';
// import 'package:first_project/assets/button.dart';
// import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: w,
          height: h,
          color: const Color(0xFF646FD4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container( // Container untuk label halaman login
                margin: const EdgeInsets.only(left: 26, right: 116),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 199,),
                    Container(
                      width: 22,
                      height: 22,
                      child: Image.asset('assets/Logo Diksi SVG to PNG 1 (Traced).png'),
                    ),
                    Text(
                        'Login',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ), //Container label login
                    Text(
                        'Masuk ke dalam akun Diksi mu',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ), // Container label nama halaman login

              const SizedBox(height: 32,),

              Container( // Container untuk input form
                margin: const EdgeInsets.only(right: 20, left: 20,),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.0, bottom: 5.0),
                        child: Text(
                          'E-Mail / Username',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ), // Label Username
                    TextField( // Text field untuk email
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "johndoe@gmail.com",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.3),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF646FD4),
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xFF646FD4)),
                        ),
                      ),
                    ),  // Text Field untuk email
                    const SizedBox(height: 16,), // Invisible Box
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.0, bottom: 5.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ), // Label Password
                    TextField( // Text field untuk password
                     style: TextStyle(
                       fontFamily: 'Montserrat',
                       fontStyle: FontStyle.normal,
                       fontWeight: FontWeight.w500,
                       fontSize: 16,
                       color: Colors.white,
                     ),
                      obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Password",
                       hintStyle: TextStyle(
                         fontSize: 16,
                         color: Colors.white.withOpacity(0.5),
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.w500,
                         fontStyle: FontStyle.normal,
                       ),
                       filled: true,
                       fillColor: Colors.white.withOpacity(0.3),
                       focusedBorder: const OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.transparent,
                           )
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color: Colors.transparent),
                       ),
                     ),
                   ) // Text field untuk password
                  ],
                ),

              ), // Container untuk input form

              const SizedBox(height: 48,),

              Container( // Container untuk submit
                margin: const EdgeInsets.only(right: 20, left: 20,),
                child: Center(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(
                                  left: 150,
                                  right: 150,
                                  bottom: 20,
                                  top: 20,
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: const BorderSide(color: Color(0xFF646FD4))
                              )
                            )
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF646FD4),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat'
                            )
                          ),
                      ), // Button log in
                      const SizedBox(height: 10),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Belum memiliki akun?',
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontFamily: 'Montserrat'
                            ),
                          ),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => RegisterPage()
                                  )
                              );
                            },
                            child: Text(
                              'Daftar Sekarang',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ) // Container untuk tombol submit
            ],
          ),
        ),
      )
    );
  }
}
