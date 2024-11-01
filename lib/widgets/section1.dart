import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_online_art/constants.dart';

class Section1 extends StatelessWidget {
  final bool isMobile;
  final bool isTab;
  final bool isDesktop;

  Section1({
    Key? key,
    this.isMobile = false,
    this.isTab = false,
    this.isDesktop = false,
  }) : super(key: key);

  double getHeight() => isMobile
      ? 400
      : isTab
          ? 500
          : 500;
  double getTextFontSize() => isMobile
      ? 14
      : isTab
          ? 18
          : 20;
  double getButtonFontSize() => isMobile
      ? 14
      : isTab
          ? 16
          : 18;
  EdgeInsets getPadding() => isMobile
      ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
      : isTab
          ? const EdgeInsets.symmetric(vertical: 30, horizontal: 40)
          : const EdgeInsets.symmetric(vertical: 40, horizontal: 60);

  Widget buildTitleText() {
    return Text(
      'Discover & Sell Art,\nSeamlessly',
      textAlign: TextAlign.center,
      maxLines: 3,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: primaryColor,
          fontSize: 28,
          fontWeight: FontWeight.w800,
          shadows: [
            Shadow(
              color: Colors.black54,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSubtitleText() {
    return Text(
      'Join the world of art buyers and sellers on MyOnlineArt.\nShowcase your work, earn rewards and connect with art enthusiasts globally.',
      textAlign: TextAlign.center,
      maxLines: 5,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: getTextFontSize(),
          fontWeight: FontWeight.w400,
          shadows: [
            const Shadow(
              color: Colors.black45,
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGetStartedButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.greenAccent.shade100,
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        elevation: 8,
        shadowColor: Colors.green.shade400.withOpacity(0.4),
      ),
      child: Text(
        'Get Started',
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: getButtonFontSize(),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(),
      width: MediaQuery.of(context).size.width,
      padding: getPadding(),
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            'https://media.istockphoto.com/id/2167031533/vector/abstract-blurred-blue-gradient-fluid-vector-background-design-wallpaper-template-with.jpg?s=612x612&w=0&k=20&c=QSbW8-XOnX5Umjg_2hIcWg_xbjvGzoq2JE4RHhEUBaE=',
          ),
          fit: BoxFit.cover,
          opacity: 0.4,
          // filterQuality: FilterQuality.,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildTitleText(),
          buildSubtitleText(),
          buildGetStartedButton(),
        ],
      ),
    );
  }
}
