import 'package:flutter/material.dart';
import '../Widgets/notification_widget1.dart';

class NotificationScreen extends StatelessWidget {
  static const id = 'notification';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Notification',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: ListView(
              children: [
                Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 241, 223, 229),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Today',
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                notifiaction_widget1(
                  color11: Colors.blueAccent,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/4.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.teal,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/2.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart1.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.amber,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/1.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart2.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.blueAccent,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/4.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.teal,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/2.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart1.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.amber,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/1.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart2.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.blueAccent,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/4.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.teal,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/2.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart1.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                notifiaction_widget1(
                  color11: Colors.amber,
                  color2: const Color.fromARGB(255, 233, 136, 168),
                  color3: Colors.tealAccent,
                  color4: Colors.cyan,
                  image1: 'assets/1.png',
                  image2: ' assets/2.png',
                  image3: 'assets/1.png',
                  image4: 'assets/5.png',
                  icon_image: 'assets/icon_heart2.png',
                ),
              ],
            )),
      ),
    );
  }
}
