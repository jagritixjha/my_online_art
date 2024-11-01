import 'package:flutter/material.dart';
import 'package:my_online_art/views/dekstop_view.dart';
import 'package:my_online_art/views/mobile_view.dart';
import 'package:my_online_art/views/tablet_view.dart';

class ResopnsiveHome extends StatelessWidget {
  const ResopnsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileView();
        } else if (constraints.maxWidth < 1024) {
          return const TabletView();
        } else {
          return const DekstopView();
        }
      },
    );
  }
}
