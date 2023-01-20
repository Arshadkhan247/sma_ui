// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  String img;
  String txtinput;
  Color color1;
  double height1;
  double top1;

  StoreWidget({
    Key? key,
    required this.img,
    required this.txtinput,
    required this.color1,
    required this.height1,
    required this.top1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(250, 255, 253, 253),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
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
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color1,
                      border: Border.all(color: Colors.white)),
                ),
                Positioned(
                  top: top1,
                  child: Image.asset(
                    img,
                    height: height1,
                  ),
                ),
                // Positioned(
                //   top: 20,
                //   left: 22,
                //   child: Container(
                //     height: 18,
                //     width: 18,
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         border: Border.all(color: Colors.white, width: 2),
                //         shape: BoxShape.circle),
                //     child: const Icon(
                //       Icons.add,
                //       size: 12,
                //       color: Color.fromARGB(255, 179, 74, 109),
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              txtinput,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
