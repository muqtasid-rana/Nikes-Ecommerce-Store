import 'package:ecom_store/components/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) =>  Column(
              children: [
               const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'My Cart',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                        itemBuilder: (context, index){
                          Shoe indivisualShoe = value.getUserCart()[index];
                          return CartTile(shoe: indivisualShoe = value.getUserCart()[index]);
                        }

                    )
                )
              ],
            ));
  }
}
