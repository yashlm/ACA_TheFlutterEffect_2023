import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AffiRmATiOnS',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 150, 126, 118)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
            child: Text('Affirmations',
                style: TextStyle(fontFamily: 'WishShore', fontSize: 50))),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 150, 126, 118),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              buildImage("assets/images/change9.jpeg"),

              //2nd Image of Slider
              buildImage("assets/images/confident.png"),

              //3rd Image of Slider
              buildImage("assets/images/change8.jpeg"),

              //4th Image of Slider
              buildImage("assets/images/change3.jpeg"),

              //5th Image of Slider
              buildImage("assets/images/change4.jpeg"),
              buildImage("assets/images/change7.jpeg"),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 550.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 4 / 3,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Card(
              child: ListTile(
                  title: Center(
                      child: Text('Tips To Live By',
                          style:
                              TextStyle(fontFamily: 'Jack', fontSize: 25))))),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a_meme1.jpeg"),
                  radius: 30),
              title: Text('Melody',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
              subtitle: Text('Hakuna Matata',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18)),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a_meme2.jpeg"),
                  radius: 30),
              title: Text('Melody',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
              subtitle: Text('Hakuna Matata',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18)),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a_meme3.jpeg"),
                  radius: 30),
              title: Text('Melody',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
              subtitle: Text('Hakuna Matata',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18)),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a_meme4.jpeg"),
                  radius: 30),
              title: Text('Melody',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
              subtitle: Text('Hakuna Matata',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18)),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a_meme5.jpeg"),
                  radius: 30),
              title: Text('Melody',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
              subtitle: Text('Hakuna Matata',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 18)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: Colors.black,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: Duration(milliseconds: 400),
          backgroundColor: Color.fromARGB(255, 150, 126, 118),
          tabBackgroundColor: Color.fromARGB(255, 215, 192, 174),
          color: Colors.black,
          tabs: [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Likes',
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            ),
          ]),
    );
  }
}

Widget buildImage(String img) => Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
