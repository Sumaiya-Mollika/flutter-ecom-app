import 'package:badges/badges.dart';
import 'package:e_com_app/model/product_model.dart';
import 'package:e_com_app/screen/details_screen.dart';
import 'package:e_com_app/screen/home_screen.dart';
import 'package:e_com_app/screen/cart_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final ProductModel? pmodel;
  final int? counter;
  MainScreen({this.pmodel, this.counter});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currrentIndex = 0;
  List<Widget> pages = [HomeScreen(), CartScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'BABY SHOP',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                letterSpacing: 5),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: pages[currrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          onTap: (value) {
            setState(() {
              currrentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: "Home",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Badge(
                badgeContent: Text(
                  "${widget.counter}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              label: "Orders",
            ),
          ],
        ));
  }
}
