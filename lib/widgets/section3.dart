import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_online_art/constants.dart';

class Section3 extends StatelessWidget {
  final bool isMobile;
  final bool isTab;
  final bool isDesktop;

  Section3({
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
      ? 18
      : isTab
          ? 22
          : 24;
  EdgeInsets getPadding() => isMobile
      ? const EdgeInsets.symmetric(vertical: 20, horizontal: 20)
      : isTab
          ? const EdgeInsets.symmetric(vertical: 30, horizontal: 40)
          : const EdgeInsets.symmetric(vertical: 40, horizontal: 60);

  Widget buildTitleText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: primaryColor,
          fontSize: getTextFontSize(),
          fontWeight: FontWeight.w700,
          shadows: const [
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

  Widget buildSubtitleText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 3,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.w400,
          shadows: const [
            Shadow(
              color: Colors.black38,
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildElevatedButton(String text, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: isMobile ? 16 : 18, color: Colors.white),
      label: Text(
        text,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 14 : 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.greenAccent.shade100,
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        elevation: 8,
        shadowColor: Colors.green.shade400.withOpacity(0.4),
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
            'https://media.istockphoto.com/id/1680522411/vector/abstract-background-with-lighting-effects.jpg?s=612x612&w=0&k=20&c=WubnrAq8T_VX2c3n4MpDznSag0OZ57Hx4T1aD8vwsGo=',
          ),
          fit: BoxFit.cover,
          opacity: 0.2,
          filterQuality: FilterQuality.high,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildTitleText('Earn Through Referrals!'),
          const SizedBox(height: 12),
          buildSubtitleText(
            'Refer a friend to create an art site and earn \$1 \nfor each successful sign-up.',
          ),
          const SizedBox(height: 16),
          buildElevatedButton('Refer a Friend', Icons.person_add_alt_1),
          const SizedBox(height: 60),
          buildTitleText('Limited-Time Offer!'),
          const SizedBox(height: 12),
          buildSubtitleText(
            'From 01/11 to 10/11, get 50% off on creating \nyour own art website.',
          ),
          const SizedBox(height: 16),
          buildElevatedButton('Claim Your Discount', Icons.local_offer),
        ],
      ),
    );
  }
}
