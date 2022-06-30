import 'package:flutter/material.dart';
import 'package:learn/pages/login.dart';
import 'package:learn/pages/home.dart';
import 'package:learn/pages/News.dart';
import 'package:learn/pages/detail.dart';

class VoucherScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return voucherState();
  }
}

class voucherState extends State<VoucherScreen> {
  String currency = "currency";
  String price = "price";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Voucher',
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Mobile Legend'),
                      ),
                      Tab(
                        child: Text('Free Fire'),
                      ),
                      Tab(
                        child: Text('Valorant'),
                      ),
                      Tab(
                        child: Text('Ragnarox X'),
                      ),
                      Tab(
                        child: Text('Genshin Impact'),
                      )
                    ]),
                preferredSize: Size.fromHeight(30.0)),
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
          body: TabBarView(
            children: <Widget>[
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 9,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "50 + 5 Diamonds",
                                  price: "Rp 16.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "50 + 5 Diamonds \n\nRp 16.500",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "250 + 25 Diamonds ",
                                  price: "Rp 82.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "250 + 25 Diamonds \n\nRp 82.500",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "1000 + 15 Diamonds",
                                  price: "Rp 382.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1000 + 15 Diamonds \n\nRp 382.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "1500 + 255 Diamonds",
                                  price: "Rp 482.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1500 + 255 Diamonds \n\nRp 482.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "2500 + 475 Diamonds",
                                  price: "Rp 812.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "2500 + 475 Diamonds \n\nRp 812.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/mobilelegend.png",
                                  name: "Mobile Legends",
                                  currency: "5000 + 1000 Diamonds",
                                  price: "Rp 1.648.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "5000 + 1000 Diamonds \n\nRp 1.648.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 9,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "100 Diamonds",
                                  price: "Rp 17.600")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "100 Diamonds \n\nRp 17.600",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "310 Diamonds",
                                  price: "Rp 53.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "310 Diamonds \n\nRp 53.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "520 Diamonds",
                                  price: "Rp 84.700")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "520 Diamonds \n\nRp 84.700",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "1060 Diamonds",
                                  price: "Rp 185.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1060 Diamonds \n\nRp 185.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "2180 Diamonds",
                                  price: "Rp 350.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "2180 Diamonds \n\nRp 350.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/freefire.png",
                                  name: "Free Fire",
                                  currency: "5600 Diamonds",
                                  price: "Rp 812.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "5600 Diamonds \n\nRp 812.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 9,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "420 Points",
                                  price: "Rp 50.000")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "420 Points \n\nRp 50.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "700 Points",
                                  price: "Rp 16.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "700 Points \n\nRp 80.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "1375 Points",
                                  price: "Rp 150.000")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1375 Points \n\nRp 150.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "2400 Points",
                                  price: "Rp 250.000")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "2400 Points \n\nRp 250.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "4000 Points",
                                  price: "Rp 16.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "4000 Points \n\nRp 400.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/valorant.png",
                                  name: "Valorant",
                                  currency: "8150 Points",
                                  price: "Rp 800.000")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "8150 Points \n\nRp 800.000",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 9,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "120.000 Zeny",
                                  price: "Rp 31.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "120.000 Zeny \n\nRp 31.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "300.000 Zeny",
                                  price: "Rp 82.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "300.000 Zeny \n\nRp 82.500",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "600.000 Zeny",
                                  price: "Rp 163.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "600.000 Zeny \n\nRp 163.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "1.980.000 Zeny",
                                  price: "Rp 526.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1.980.000 Zeny \n\nRp 526.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "30 Big Cat Coin",
                                  price: "Rp 82.500")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "30 Big Cat Coin \n\nRp 82.500",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/ragnarox.png",
                                  name: "Ragnarox X",
                                  currency: "298 Big Cat Coin",
                                  price: "Rp 812.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "298 Big Cat Coin \n\nRp 812.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 9,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "60 Genesis",
                                  price: "Rp 17.600")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "60 Genesis \n\nRp 17.600",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "300 Genesis",
                                  price: "Rp 86.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "300 Genesis \n\nRp 86.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "980 Genesis",
                                  price: "Rp 273.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "980 Genesis \n\nRp 273.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "1980 Genesis",
                                  price: "Rp 526.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "1980 Genesis \n\nRp Rp 526.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "3280 Genesis",
                                  price: "Rp 878.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "3280 Genesis \n\nRp 878.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                  image: "assets/genshin.png",
                                  name: "Genshin Impact",
                                  currency: "6480 Genesis",
                                  price: "Rp 1.648.900")),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "6480 Genesis \n\nRp 1.648.900",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
