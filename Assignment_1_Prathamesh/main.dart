import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

  final urlImages = [
    'https://live.staticflickr.com/6169/6144173245_d781ba4f4f_b.jpg',
    'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
    'https://th.bing.com/th/id/OIP.PuPWrQGLcGccVqXE4PHsWAHaEo?w=241&h=180&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.P964u_TuURYpxhlzDpVBIwHaEo?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.E3Y0z008zWcLXrolR6cmYgHaEK?w=290&h=180&c=7&r=0&o=5&pid=1.7',
  ];

  Widget buildImage(String urlImage, int index) => Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.green),
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Image.network(
          urlImage,
          fit: BoxFit.fill, 
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(210, 177, 153, 214),
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(210, 178, 156, 214),
        title: const Text(
          'Welcome!',
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) => //
              IconButton(
            hoverColor: const Color.fromARGB(210, 116, 98, 145),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          const Icon(
            Icons.notifications_active_sharp,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.black,
            hoverColor: const Color.fromARGB(210, 116, 98, 145),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(125, 33, 149, 243),
              Color.fromARGB(199, 248, 33, 18),
            ],
          )),
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              ListTile(
                
                leading: const Icon(
                  Icons.favorite,
                ),
                title: const Text('Favourite',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
              ListTile(
                leading: const Icon(
                  Icons.share,
                ),
                title: const Text('Share',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Settings',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
              ListTile(
                leading: const Icon(
                  Icons.star,
                ),
                title: const Text('Rate',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
              ListTile(
                leading: const Icon(
                  Icons.dark_mode_sharp,
                ),
                title: const Text('Dark Mode',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
              ListTile(
                leading: const Icon(
                  Icons.arrow_back_outlined,
                ),
                title: const Text('Back',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context);
                },
                hoverColor: const Color.fromARGB(97, 27, 169, 194),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 70.0,
          child: Text('Carousel',textAlign:TextAlign.center,),
          ),
          Center(
            //** Carousel **/
            child: CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                reverse: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.bounceInOut,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          SizedBox(
            height: 575.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 700.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 30.0,
                      color: Colors.deepPurple[400],
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Center(
                              child: Image.network(
                                'https://live.staticflickr.com/6169/6144173245_d781ba4f4f_b.jpg',
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        166, 229, 115, 115),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.favorite),
                                ),
                                const Text('Like', textAlign: TextAlign.center),
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        const Color.fromARGB(127, 255, 235, 59),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.thumb_up),
                                ),
                                const Text('Upvote',
                                    textAlign: TextAlign.center),
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(172, 59, 209, 219),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.share),
                                ),
                                const Text('Share',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 700.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: const EdgeInsets.all(8.0),
                      elevation: 30.0,
                      color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Center(
                              child: Image.network(
                                'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        166, 229, 115, 115),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.favorite),
                                ),
                                const Text('Like', textAlign: TextAlign.center),
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        const Color.fromARGB(127, 255, 235, 59),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.thumb_up),
                                ),
                                const Text('Upvote',
                                    textAlign: TextAlign.center),
                                const Padding(padding: EdgeInsets.all(30.0)),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(172, 59, 209, 219),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(Icons.share),
                                ),
                                const Text('Share',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12.0),
                  child: const Stack(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage('assets/profile_image.png'),
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 50.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ACA: The Flutter Effect",
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '~I have completed the assignment.',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 14.0,
                          color: Colors.grey[600],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '11:30 AM',
                      style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 12.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4.0),
                    const Icon(
                      Icons.done_all_outlined,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(210, 138, 107, 189),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: const GNav(
          rippleColor: Color.fromARGB(210, 222, 203, 253),
          haptic: true,
          curve: Curves.easeInOutExpo,
          duration: Duration(milliseconds: 575),
          tabBorderRadius: 100.0,
          gap: 8,
          iconSize: 24,
          color: Color.fromARGB(210, 20, 0, 53),
          activeColor: Color.fromARGB(210, 15, 0, 39),
          tabBackgroundColor: Color.fromARGB(210, 127, 103, 165),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border_rounded,
              text: 'Favourite',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
