import 'package:ecom_store/components/nav_bar.dart';
import 'package:ecom_store/screens/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
              )),
        ),
        backgroundColor: Colors.transparent,
        title: Image.asset('lib/images/nikeee.png', fit: BoxFit.cover,height: 55,),
        centerTitle: true,
        actions: const [
           Padding(
            padding:  EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/images/user.jpg'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/nike.png',
                  color: Colors.white,
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 455,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Now _pages is accessible here
    );
  }
}
