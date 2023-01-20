// ignore_for_file: must_be_immutable, camel_case_types

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:sma_ui/Widgets/LeadingWidget.dart';
import 'package:sma_ui/Widgets/StoreWidget.dart';
import 'package:sma_ui/Widgets/notification&message.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF9FAFE),
        body: Column(
          // this column for main body.
          children: [
            Container(
              // this Container is for upper Widget( ROW & LISTVIEW)
              color: const Color(0xffFFFFFF),
              child: Padding(
                // For Upper container
                padding: const EdgeInsets.only(
                    top: 50, left: 25, right: 0, bottom: 20),
                child: Column(
                  // internal for Upper Container
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                            'assets/topimage.png',
                          ),
                        ),
                        const SizedBox(
                          width: 220,
                        ),
                        // for notification icon
                        GestureDetector(
                          onTap: () {},
                          child: NotificationAndMessWidget(
                            img: 'assets/notification.jpg',
                            txtbadge: '',
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        // for message icon
                        NotificationAndMessWidget(
                          img: 'assets/message.jpg',
                          txtbadge: '30+',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              StoreWidget(
                                height1: 70,
                                top1: -3.8,
                                color1: const Color(0xffE3AEE6),
                                img: 'assets/1.png',
                                txtinput: 'Me',
                              ),
                              StoreWidget(
                                height1: 80,
                                top1: -12,
                                color1: const Color(0xffDCF5BD),
                                img: 'assets/2.png',
                                txtinput: 'Doganbo',
                              ),
                              StoreWidget(
                                height1: 74,
                                top1: -4,
                                color1: const Color(0xffFED8B5),
                                img: 'assets/3.png',
                                txtinput: 'Bamsel',
                              ),
                              StoreWidget(
                                height1: 60,
                                top1: 2,
                                color1: const Color(0xffE5FFFA),
                                img: 'assets/4.png',
                                txtinput: 'Ertugal',
                              ),
                              StoreWidget(
                                height1: 60,
                                top1: 2,
                                color1: const Color(0xffF7D1CC),
                                img: 'assets/5.png',
                                txtinput: 'Portacul',
                              ),
                              StoreWidget(
                                height1: 60,
                                top1: 2,
                                color1:
                                    const Color.fromARGB(255, 188, 198, 142),
                                img: 'assets/6.png',
                                txtinput: 'Adreen',
                              ),
                              StoreWidget(
                                height1: 60,
                                top1: 2,
                                color1: const Color.fromARGB(247, 145, 97, 164),
                                img: 'assets/7.png',
                                txtinput: 'Robert',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    /*

                      For Ending Stories ListView ...

                      */
                  ],
                ),
              ),
            ),

            /*   End of Upper Container...  */

            // 1st container......
            ////
            ///
            ///

            const SingleChildScrollView(
              child: ScrollingWidget(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;

            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.people),
                title: const Text('Users'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: const Icon(Icons.message),
                title: const Text('Messages'),
                activeColor: Colors.pink),
            BottomNavyBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Settings'),
                activeColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ScrollingWidget extends StatelessWidget {
  const ScrollingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 2,
            left: 10,
            right: 10,
          ),
          child: Container(
            height: 60,
            width: 340,
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  20,
                ),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListTile(
              leading: const LeadingWidget(
                img: 'assets/1.png',
                color2: Color(0xffE3AEE6),
              ),
              title: const Text(
                'Writing something...',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Image.asset(
                'assets/edit_Icon.png',
                height: 16,
              ),
            ),
          ),
        ),

        //  For End Of 1st Container.........

        // For 2nd Container..........
        Container(
          height: 60,
          width: 340,
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            // for internal Of 2nd Container
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Container(
                  // Emoji Icon............
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.yellow.shade100,
                    ),
                  ),
                  child: ClipRRect(
                    child: Center(
                        child: Image.asset(
                      'assets/happy_emoji.png',
                      height: 20,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                Container(
                  // Gallery Icon..........
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: const ClipRRect(
                    child: Center(
                      child: Image(
                        height: 20,
                        image: AssetImage(
                          'assets/icons8-picture-48.png',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                Container(
                  // Location Icon ..........
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 243, 230, 229),
                    ),
                  ),
                  child: const ClipRRect(
                    child: Center(
                      child: Image(
                        height: 18,
                        image: AssetImage(
                          'assets/location.png',
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 95,
                ),

                // For Button ( Share ).

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 39,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(colors: [
                        Color(0xfff8a423),
                        Color.fromARGB(255, 241, 81, 22)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: const Center(
                      child: Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          // Between Two Container & Scrolling Content.
          height: 20,
        ),

        Padding(
          // For Content Container....
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            // Container For Content section
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // Internal Column of Container
              children: [
                ListTile(
                  // 1st  Three widget
                  leading: const LeadingWidget(
                      img: 'assets/3.png', color2: Color(0xffFED8B5)),
                  title: const Text(
                    'Bamsel Cooper',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  subtitle: const Text(
                    'Photographer',
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Container(
                    // for Circle and menu icon
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.pink.shade300,
                        width: 1.1,
                      ),
                    ),
                    child: const Icon(
                      Icons.more_vert_outlined,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                // End of three widgets..

                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 270,
                        decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                        child: const Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/contentimage.png')),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 45,
                          ),
                          Image.asset(
                            'assets/heart.png',
                            height: 16,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/chat.png',
                            height: 16,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/send.png',
                            height: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'The term social media refers to a computer - \nbased technology that facilitates the sharing of ideas thoughts, and information through virtual networks and communities. ',
                    style: TextStyle(fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
