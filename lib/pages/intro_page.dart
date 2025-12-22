import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                'lib/assets/icons/nike_logo_black.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 48,),
            //title
            const Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24,),
            //subtitle
            const Text(
              'Brand new sneakers and custom kicks with premium quality.',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48,),
            //shop now button
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 280,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[300],
                      fontSize: 16
                    ),
                  ),
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }
}
