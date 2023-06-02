import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSection(),
              const ChatPreviewSection(),
              const PictureCards(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Custom App Bar'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
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
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}

class CarouselSection extends StatelessWidget {
  final List<String> cardImages = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
  ];

  CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: cardImages.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cardImages[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'welcome',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Home ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.8,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
    );
  }
}

class ChatPreviewSection extends StatelessWidget {
  const ChatPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/image4.png'),
            radius: 30,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Garima',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Hello, how are you?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}

class PictureCards extends StatelessWidget {
  const PictureCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PictureCard(
            image: AssetImage('assets/image1.png'),
            likeIcon: Icons.favorite,
            shareIcon: Icons.share,
          ),
          PictureCard(
            image: AssetImage('assets/image2.png'),
            likeIcon: Icons.favorite,
            shareIcon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final IconData likeIcon;
  final IconData shareIcon;

  const PictureCard({
    super.key,
    required this.image,
    required this.likeIcon,
    required this.shareIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            10), // Adjust the padding as per your requirement
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  bottom: 10), // Adjust the padding as per your requirement
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    likeIcon,
                    color: Colors.red,
                    size: 24,
                  ),
                  Icon(
                    shareIcon,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
