import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? ontap;
  ShoeTile({super.key, required this.shoe, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          Center(child:Text(
          shoe.name,
          style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(shoe.price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Text(shoe.description, style: TextStyle(color: Colors.grey[600])
                        ),
                      ],
                    ),

                  GestureDetector(
                    onTap: ontap,
                    child: Container(
                      padding:  const EdgeInsets.all(20),

                        child: const Icon(Icons.add, color: Colors.white,),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(12)

                        )
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
