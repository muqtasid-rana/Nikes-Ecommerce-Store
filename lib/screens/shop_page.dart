import 'package:ecom_store/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/show_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);
    showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
          backgroundColor: Colors.grey[300],
              title: const Text('Successfully added!'),
          content: const Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      // TextField takes up all available space
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search', // Placeholder text
                          hintStyle: TextStyle(color: Colors.grey[600]),
                          border: InputBorder.none, // Removes underline
                          contentPadding: EdgeInsets.zero, // Adjust padding
                        ),
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.grey[600]),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Text(
            'Different varieties of sneakers available only for you!',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF303030),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: value.getShoeList().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      ontap: () =>  addShoeToCart(shoe),
                    );
                  })
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Divider(
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
