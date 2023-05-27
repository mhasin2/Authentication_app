import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 150,
            width: 1200,
            child: Image.asset(
              "assets/header.png",
              fit: BoxFit.fill,
            ),
          ),
          Spacer(),
          Text(
            "ANGEL SURE",
            style: GoogleFonts.akayaTelivigala(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: Color(0xff2F80ED)),
          ),
          Image.asset(
            "assets/logo.png",
            height: 239,
            width: 298,
          ),
          Spacer(),
          Container(
            height: 180,
            width: 755,
            child: Image.asset(
              "assets/footer.png",
              fit: BoxFit.fill,
            ),
          ),
        ]),
      ),
    );
  }
}
