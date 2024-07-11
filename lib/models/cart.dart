import 'package:ecom_store/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Dunk Low Retro",
        price: '5500 RS',
        description: "Men's Shoes",
        imagePath: 'lib/images/nikezoom.png'),
    Shoe(
        name: "Nike Dunk Low Retro",
        price: '4500 RS',
        description: "Men's Shoes",
        imagePath: 'lib/images/dunk-low-retro-mens-shoes-76KnBL.png'),
    Shoe(
        name: "Nike Air VaporMax",
        price: '6500 RS',
        description: "Men's Shoes",
        imagePath: 'lib/images/air-vapormax-2023-flyknit-mens-shoes-vSm5p2.png'),
    Shoe(
        name: "Nike Air Max Dn",
        price: '5000 RS',
        description: "Men's Shoes",
        imagePath: 'lib/images/air-max-dn-shoes-27XkSQ.png'),
    Shoe(
        name: "Zegama 2",
        price: '7200 RS',
        description: "Men's Shoes",
        imagePath: 'lib/images/zegama-2-mens-trail-running-shoes-fZw18h.png'),
  ];

  //user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList (){
    return shoeShop;
  }
  //get list of user cart
  List<Shoe> getUserCart () {
    return userCart;
  }
//adding to cart

  void addToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

//removing from cart
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }



}
