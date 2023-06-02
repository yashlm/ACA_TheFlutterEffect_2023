import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MATH ZONE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red[400],
            //drawerEnableOpenDragGesture: false,
            title: const Text(
              'MATH ADDICT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            leading: Builder(
              builder: (context) => // Ensure scaffolg is in context
                  IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer()),
            ),
            actions: const [
              Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.more_vert, color: Colors.black)
            ]),
        drawer: Drawer(
            child: Container(
                padding: const EdgeInsets.only(top: 30),
                color: const Color(0xFFFEEAE6),
                child: Column(children: [
                  ListTile(
                    leading: const Icon(
                      Icons.favorite,
                    ),
                    title: const Text('Favorite',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.share,
                    ),
                    title: const Text('share',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.settings,
                    ),
                    title: const Text('Setting',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.star_rate,
                    ),
                    title: const Text('Rate',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.dark_mode,
                    ),
                    title: const Text('Dark Mode',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.arrow_back,
                    ),
                    title: const Text('Back',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onTap: () {},
                  ),
                ]))),
        backgroundColor: Colors.blue[200],
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(width: 8),
              Container(
                width: 600,
                color: Colors.yellowAccent,
                padding:const EdgeInsets.all(8),
                child:const Text(
                  "About:",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  height: 100,
                  width: 600,
                  color: Colors.yellowAccent,
                  padding:const EdgeInsets.all(8),
                  //margin: EdgeInsets.symmetric(vertical: 8),
                  child:const Text(
                    'Hello Comrades, Welcome to my world. Our mission is to showcase mathematics as a universal language of patterns, an expressive art form and a source of endless wonder and discovery'
                    ' . Let us tap into mathematical beauty that has inspired great minds for millennia.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  )),
              const SizedBox(width: 8),
              const CarouselWidget(),
              const ChatPreviewWidget(),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PictureCardWidget(
                    image: 'assets/images/image2.jpg',
                    icon: Icons.favorite,
                  ),
                  PictureCardWidget(
                    image: 'assets/images/TERRY.png',
                    icon: Icons.share,
                  ),
                  PictureCardWidget(
                    image: 'assets/images/calculus.jpg',
                    icon: Icons.download,
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({Key? key, this.preferredSize = const Size.fromHeight(50)})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: _isExpanded ? 150 : widget.preferredSize.height,
      child: AppBar(
        title: const Text('MATH ADDICT'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon:
                Icon(_isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    );
  }
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [
        'assets/images/image1.jpg',
        'assets/images/image8.jpg',
        'assets/images/image5.png',
      ].map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class ChatPreviewWidget extends StatelessWidget {
  const ChatPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      color: Colors.teal[100],
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(
              // ignore: unnecessary_string_escapes
              image: AssetImage('assets/images/image7.png'),

              width: 80,
              height: 120,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Erdos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '"The purpose of life is to conjecture and prove".',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          

          const Spacer(),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}

class PictureCardWidget extends StatelessWidget {
  final String image;
  final IconData icon;

  const PictureCardWidget({Key? key, required this.image, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon),
              const Text('42'),
            ],
          ),
        ],
      ),
    );
  }
}
