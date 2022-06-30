import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learn/pages/login.dart';
import 'package:learn/pages/voucher.dart';
import 'package:learn/pages/News.dart';

class HomeScreen extends StatefulWidget {
  String name;
  HomeScreen(this.name);
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState(this.name);
  }
}

class HomeScreenState extends State<HomeScreen> {
  String name;
  HomeScreenState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Hello " + name,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Octashop'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Voucher'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoucherScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('News'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/logoadobe.png',
              height: 128,
              width: 128,
            ),
            SizedBox(
              height: 40,
            ),
            // Text('Octashop'),
            SizedBox(
              height: 40,
            ),
            CarouselSlider(
              items: [
                Image(image: AssetImage('assets/mobilelegend.png')),
                Image(image: AssetImage('assets/valorant.png')),
                Image(image: AssetImage('assets/genshin.png'))
              ],
              options: CarouselOptions(
                initialPage: 1,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(seconds: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
