import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:draggable_home/draggable_home.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<String> imgLocal = [
  'assets/img/mercury.jpg',
  'assets/img/venus.jpg',
  'assets/img/earth.jpg',
  'assets/img/mars.png',
  'assets/img/jupyter.jpg',
  'assets/img/saturn.png',
  'assets/img/uranus.jpg',
  'assets/img/neptune.png',
  'assets/img/pluto.jpg'
];

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning!';
  }
  if (hour < 17) {
    return 'Good Afternoon!';
  }
  return 'Good Evening!';
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kushagra',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Body(),
      bottomNavigationBar: NavBar(),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey.withOpacity(0.5),
            color: Colors.white,
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
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Good Evening,",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Futura', fontSize: 25)),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      drawer: Drawer(),
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      backgroundColor: Colors.black,
      appBarColor: Colors.black,
    );
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Hey!",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Futura',
                        fontSize: 25)),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/img/pic.jpg'),
                radius: 80,
              )
            ],
          ),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Carousel_Slider(),
          buildCardsv2('assets/img/icon/icon1.jpg'),
          buildCardsv2('assets/img/icon/icon2.jpg'),
          buildCardsv2('assets/img/icon/icon3.jpg'),
          buildCardsv2('assets/img/icon/icon4.jpg'),
          buildCardsv2('assets/img/icon/icon5.jpg'),
          buildCardsv2('assets/img/icon/icon6.jpg'),
          buildCardsv2('assets/img/icon/icon7.jpg'),
          buildCardsv2('assets/img/icon/icon8.jpg'),
          buildCardsv2('assets/img/icon/icon9.jpg'),
          buildCardsv2('assets/img/icon/icon10.jpg'),
          buildCardsv2('assets/img/icon/icon11.jpg'),
          buildCardsv2('assets/img/icon/icon12.jpg'),
        ]);
  }
}

Widget buildImage(String img) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.asset(
        img,
        width: 260,
        height: 360,
        fit: BoxFit.cover,
      ),
    );

Widget buildCardsv2(String img) => Card(
      color: Colors.black,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(img),
          radius: 40,
        ),
        minLeadingWidth: 80,
        title: Text(
          'Cats',
          style:
              TextStyle(color: Colors.white, fontFamily: 'Aura', fontSize: 25),
        ),
        subtitle: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta, eros et placerat hendrerit, tellus felis egestas lectus, ut feugiat massa diam ut leo. Quisque consectetur risus sit amet ex porta commodo.',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        trailing: Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ),
    );

Widget Carousel_Slider() => CarouselSlider.builder(
      options: CarouselOptions(
        height: 500,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1.2,
      ),
      itemCount: imgLocal.length,
      itemBuilder: (context, index, realIndex) {
        final img = imgLocal[index];
        return Column(children: [
          buildImage(img),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(
                  Icons.thumb_up_outlined,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.thumb_down_outlined,
                  color: Colors.white,
                ),
              )
            ],
          )
        ]);
      },
    );

Widget Like_Buttons() => GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey.withOpacity(0.5)!,
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.thumb_up_outlined,
          ),
          GButton(
            icon: Icons.thumb_down_outlined,
          ),
        ]);
