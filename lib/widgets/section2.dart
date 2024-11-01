import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_online_art/constants.dart';

class Section2 extends StatelessWidget {
  final bool isMobile;
  final bool isTab;
  final bool isDekstop;

  Section2({
    Key? key,
    this.isMobile = false,
    this.isTab = false,
    this.isDekstop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Platform Features',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 30),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 900) {
                return desktopLayout();
              } else if (constraints.maxWidth > 600) {
                return tabletLayout();
              } else {
                return mobileLayout();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget desktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        featuresCard(
          title: 'Sell & Buy Art',
          subtitle:
              'Explore unique art pieces and easily showcase your artwork.',
          icon: Icons.palette,
          width: 280,
        ),
        featuresCard(
          title: 'Earn with Referrals',
          subtitle: 'Receive 5% commission on each referred artwork sale.',
          icon: Icons.monetization_on,
          width: 280,
        ),
        featuresCard(
          title: 'Create Your Art Website',
          subtitle: 'Build a personalized art site with a custom subdomain.',
          icon: Icons.web,
          width: 280,
        ),
      ],
    );
  }

  Widget tabletLayout() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            featuresCard(
              title: 'Sell & Buy Art',
              subtitle:
                  'Explore unique art pieces and easily showcase your artwork.',
              icon: Icons.palette,
              width: 280,
            ),
            featuresCard(
              title: 'Earn with Referrals',
              subtitle: 'Receive 5% commission on each referred artwork sale.',
              icon: Icons.monetization_on,
              width: 280,
            ),
          ],
        ),
        const SizedBox(height: 40),
        featuresCard(
          title: 'Create Your Art Website',
          subtitle: 'Build a personalized art site with a custom subdomain.',
          icon: Icons.web,
          width: 360,
        ),
      ],
    );
  }

  Widget mobileLayout() {
    return Column(
      children: [
        featuresCard(
          title: 'Sell & Buy Art',
          subtitle:
              'Explore unique art pieces and easily showcase your artwork.',
          icon: Icons.palette,
          width: 300,
        ),
        const SizedBox(height: 40),
        featuresCard(
          title: 'Earn with Referrals',
          subtitle: 'Receive 5% commission on each referred artwork sale.',
          icon: Icons.monetization_on,
          width: 300,
        ),
        const SizedBox(height: 40),
        featuresCard(
          title: 'Create Your Art Website',
          subtitle: 'Build a personalized art site with a custom subdomain.',
          icon: Icons.web,
          width: 300,
        ),
      ],
    );
  }

  Widget featuresCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required double width,
  }) {
    return SizedBox(
      width: width,
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 25,
            left: 25,
            child: Transform.rotate(
              angle: -0.1,
              child: Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Transform.rotate(
              angle: 0.10,
              child: Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Transform.rotate(
              angle: -0.04,
              child: Container(
                height: 180,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade200.withOpacity(0.6),

                  // color: Colors.blue.shade100.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          // Main white card
          Container(
            height: 180,
            width: width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.blue.shade700,
                  size: 36,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  maxLines: 5,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
