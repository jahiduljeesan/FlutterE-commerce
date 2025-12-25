import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'lib/assets/icons/nike_logo_black.png',
                color: Colors.grey.shade400,
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  color: Colors.grey.shade100,
                  thickness: .3,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              _listTile(Icons.home,'Home'),
              _listTile(Icons.info,'About'),
            ],
          ),
          _listTile(Icons.logout,'Logout'),
        ],
      ),
    );
  }

  Padding _listTile(IconData icon,String text) {
    return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(icon,color: Colors.white,),
            title: Text(text),
            textColor: Colors.white,
          ),
        );
  }
}
