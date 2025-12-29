import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}


class _CartPageState extends State<CartPage> {

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context,cart,_){
        if(cart.items.isEmpty) {
          return const Center(
            child: Text('Cart is empty'),
          );
        }
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context,index){
                  final item = cart.items[index];
                  return ListTile(
                    title: Text(item.shoes.name),
                    subtitle: Text('Qty: ${item.quantity}'),
                    trailing: Text(
                      '\$${item.shoes.price * item.quantity}',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),

                    ),
                  );
                },
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0.3,
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '\$${cart.totalPrice}',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                blurStyle: BlurStyle.outer
                            )
                          ]
                      ),
                      child: Text('Checkout',style: TextStyle(fontSize: 18,color: Colors.white,fontStyle: FontStyle.italic),),
                    )
                  ],
                )
            ),
          ],
        );
      },
    );
  }
}
