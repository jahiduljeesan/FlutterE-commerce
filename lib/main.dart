import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/cart.dart';
import 'package:flutter_ecommerce/pages/intro_page.dart';
import 'package:flutter_ecommerce/providers/cart_provider.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //Init hive
  await Hive.initFlutter();
  //open hive box
  await Hive.openBox<Cart>('cart_box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
