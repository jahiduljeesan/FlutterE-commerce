import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_ecommerce/model/shoes.dart';

class ShoesStyle extends StatefulWidget {
  final Shoes shoes; // better to use final instead of required this.shoes
  const ShoesStyle({super.key, required this.shoes});

  @override
  State<ShoesStyle> createState() => _ShoesStyleState();
}

class _ShoesStyleState extends State<ShoesStyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      width: 250,                    // Set a reasonable width for the card
      height: 200,                   // Fixed height for the entire card
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,      // Important: makes children fill the Stack
          children: [
            // Background image
            AvifImage.asset(
              widget.shoes.imagePath,
              fit: BoxFit.cover,
            ),

            // Dark gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: const [0.4, 1.0],
                ),
              ),
            ),

            // Text details
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.shoes.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$${widget.shoes.price}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // If you have a description, use it; otherwise remove this
                      // Text(
                      //   widget.shoes.description ?? '',
                      //   style: const TextStyle(color: Colors.white70, fontSize: 14),
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15)
                    )
                  ),
                  child: Center(
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}