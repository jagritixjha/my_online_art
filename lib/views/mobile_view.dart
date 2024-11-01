import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_online_art/widgets/section1.dart';
import 'package:my_online_art/widgets/section2.dart';
import 'package:my_online_art/widgets/section3.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyOnlineArt',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout_rounded,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Section1(isMobile: true),
          Section2(isMobile: true),
          Section3(isMobile: true),
        ],
      ),
    );
  }
}
