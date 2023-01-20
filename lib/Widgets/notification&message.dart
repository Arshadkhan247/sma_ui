// ignore_for_file: must_be_immutable, file_names
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class NotificationAndMessWidget extends StatelessWidget {
  String img;
  final String txtbadge;
  NotificationAndMessWidget(
      {Key? key, required this.img, required this.txtbadge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container( 
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  spreadRadius: 0.1,
                  offset: Offset(0.5, 4), // Shadow position
                ),
              ],
              shape: BoxShape.circle),
          child: Center(
            child: Image.asset(
              img,
              height: 15,
            ),
          ),
        ),
        Positioned( // for Badge Icon placement ..
          top: 4,
          right: -20,
          child: Badge(
            badgeContent: Text(
              txtbadge,
              style: const TextStyle(fontSize: 8, color: Colors.white),
            ),
            shape: BadgeShape.square,
            borderRadius: BorderRadius.circular(30),
          ),
        )
      ],
    );
  }
}
