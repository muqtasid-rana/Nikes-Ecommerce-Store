import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyNavBar({super.key, required this.onTabChange});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: GNav(
        color: Colors.grey[500],
          activeColor: Colors.grey[800],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 16,
          onTabChange: (value)=> onTabChange!(value) ,
          mainAxisAlignment: MainAxisAlignment.center,
          tabs:const [
            GButton(icon: Icons.home, text: 'Shop',),
            GButton(icon: Icons.shopping_cart, text: 'Cart',)
          ]
      ) ,
    );

  }
}
