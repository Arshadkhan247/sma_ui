// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({super.key, required this.img, required this.color2});
  final String img;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        // for External Border of this Container( pink Colors.)
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(
              255,
              215,
              65,
              115,
            ),
          ),
        ),
      ),
      Container(
        // for Internal backgrounf of the Container( Slight pink/color2)
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // (0xffFED8B5)
            // color: const Color(0xffE3AEE6)
            color: color2,
            border: Border.all(color: Colors.white)),
      ),
      Positioned(
        // for image placement btw container
        top: -1,
        child: Image.asset(
          img,
          height: 45,
        ),
      ),
    ]);
  }
}
