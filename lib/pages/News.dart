import 'package:flutter/material.dart';
import 'package:learn/pages/home.dart';
import 'package:learn/pages/login.dart';
import 'package:learn/pages/voucher.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsState();
  }
}

class NewsState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'News',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen("")),
                );
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
          child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 16 / 12,
              children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 128,
                      width: 128,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Promo Spesial hari ini Diskon sampai 50%\n"),
                    Text(
                        "INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 128,
                      width: 128,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Promo Spesial hari ini Diskon sampai 20%\n"),
                    Text(
                        "INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 128,
                      width: 128,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Promo Spesial hari ini Diskon sampai 20%\n"),
                    Text(
                        "INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 128,
                      width: 128,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Promo Spesial hari ini Diskon sampai 20%\n"),
                    Text(
                        "INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.blueGrey),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 128,
                      width: 128,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Promo Spesial hari ini Diskon sampai 20%\n"),
                    Text(
                        "INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI INI ADALAH DESKRIPSI"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
