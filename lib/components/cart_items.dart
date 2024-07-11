import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartTile extends StatefulWidget {
  Shoe shoe;
   CartTile({super.key , required this.shoe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
   void removeItemsFromCart(){
     Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),

      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath,),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete,), onPressed: removeItemsFromCart, ),
      ),
    );
  }
}
