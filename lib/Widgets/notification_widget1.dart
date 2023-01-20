import 'package:flutter/material.dart';

class notifiaction_widget1 extends StatelessWidget {
  String image1;
  String image2;
  String image3;
  String image4;
  String icon_image;
  Color color11;
  Color color2;
  Color color3;
  Color color4;
  notifiaction_widget1({
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.icon_image,
    required this.color11,
    required this.color2,
    required this.color3,
    required this.color4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 450,
      //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Row(
        children: [
          Stack(children: [
            Notification_Screen_Widget(
              cont1hight: 60,
              cont1width: 60,
              cont2hight: 50,
              cont2width: 50,
              img: image3,
              color1: color11,
              //assets/1.png
              pichight: 70,
            ),
            Positioned(
                left: 50,
                top: 10,
                child: Image.asset(
                  icon_image,
                  height: 20,
                )),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17, bottom: 2),
                child: Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 100,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            child: Notification_Screen_Widget(
                              cont1hight: 30,
                              color1: color2,
                              cont1width: 30,
                              cont2hight: 22,
                              cont2width: 22,
                              img: image1,
                              // assets/1.png
                              pichight: 35,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Notification_Screen_Widget(
                              cont1hight: 30,
                              cont1width: 30,
                              color1: color3,
                              cont2hight: 22,
                              cont2width: 22,
                              img: image3,
                              //assets/1.png
                              pichight: 35,
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Notification_Screen_Widget(
                              cont1hight: 30,
                              color1: color4,
                              cont1width: 30,
                              cont2hight: 22,
                              cont2width: 22,
                              img: image4,
                              // assets/1.png
                              pichight: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text('Arshad Khan')
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('and 2035 other love this post'),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80, top: 10),
            child: Text('30s'),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class Notification_Screen_Widget extends StatelessWidget {
  String img;
  double cont1hight;
  double cont1width;
  double cont2hight;
  double cont2width;
  double pichight;
  Color color1;
  Notification_Screen_Widget({
    required this.cont1hight,
    required this.cont1width,
    required this.cont2hight,
    required this.cont2width,
    required this.img,
    required this.pichight,
    required this.color1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: cont1hight,
            width: cont1width,
            decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 179, 16, 70),
              ),
            ),
          ),
        ),
        Container(
          height: cont2hight,
          width: cont2width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color1,
            //border: Border.all(color: Colors.black)
          ),
        ),
        Positioned(
          top: 2,
          child: Image.asset(
            img,
            height: pichight,
          ),
        ),
      ],
    );
  }
}
