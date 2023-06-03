import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData.light(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List images = [
    'https://www.hindustantimes.com/ht-img/img/2023/06/02/550x309/Lionel-Messi-kisses-the-World-Cup-after-winning-FI_1672480649785_1685683522562.jpg',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F05%2Fone-piece-world-top-100-global-one-piece-popularity-contest-results-00.jpg?w=960&cbr=1&q=90&fit=max',
    'https://s3.youthkiawaaz.com/wp-content/uploads/2018/08/07192000/AB-De-Villiers-6.jpg',
    'https://lh3.googleusercontent.com/CF0c2_01LQNhsepMUhy7QO31wQrO2i5vOIl2VkY47CFVZnxnor8vnOWV9iG4x-oqom4cwuqJAVidP8rk=w2880-h1200-p-l90-rj',
    'https://upload.wikimedia.org/wikipedia/en/0/03/Walter_White_S5B.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEEAE6),
        title: const Text('Assignment 1',
            style: TextStyle(
              color: Colors.black,
            )),
        // centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: images.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFFFEEAE6),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          child: GNav(
              rippleColor: Color(0xFFE85D04),
              backgroundColor: Color(0xFFFEEAE6),
              gap: 8,
              activeColor: Color(0xFFE85D04),
              tabBackgroundColor: Color.fromARGB(255, 235, 213, 230),
              color: Colors.black,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'Chats',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ]),
        ),
      ),
      drawer: Drawer(
          child: Container(
        color: const Color(0xFFFEEAE6),
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              title: const Text(
                'Bookmarks',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: const Text(
                'Share',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              title: const Text(
                'Rate Our App',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
              title: const Text(
                'Dark Mode',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              title: const Text(
                'Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )),
    );
  }
}
