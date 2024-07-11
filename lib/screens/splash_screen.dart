import 'package:ecom_store/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nike.png',
                color: Colors.grey[800],
                height: 350,
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            //title
            const Text(
              'NIKE SNEAKERS',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
            ),
            const SizedBox(
              height: 20,
            ),
            //subtitle
            const Text(
              "Premium quality and long lasting sneakers available ",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const Text(
              "only for you! ",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),

            const SizedBox(
              height: 170,
            ),
            //button to enter the app
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen() )),
              child: Container(
                height: 65,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
