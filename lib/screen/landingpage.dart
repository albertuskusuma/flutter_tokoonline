import 'package:flutter/material.dart';
import 'package:flutter_tokoonline/helper/constant.dart';
import 'package:flutter_tokoonline/screen/cartpage.dart';
import 'package:flutter_tokoonline/screen/dashboard.dart';
import 'package:flutter_tokoonline/screen/favoritepage.dart';
import 'package:flutter_tokoonline/screen/orderpage.dart';
import 'package:flutter_tokoonline/screen/profilepage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new DashboardPage(),
    new Favoritepage(),
    new CartPage(),
    new OrderPage(),
    new ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.bg4,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color:Palette.bg4
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey
              ),
              label: 'Home'
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.favorite,
                color:Palette.bg4
              ),
              icon: new Icon(
                Icons.favorite,
                color: Colors.grey
              ),
              label: 'Favorite'
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.shopping_cart_outlined,
                color:Palette.bg4
              ),
              icon: new Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey
              ),
              label: 'Cart'
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.payment_rounded,
                color:Palette.bg4
              ),
              icon: new Icon(
                Icons.payment_rounded,
                color: Colors.grey
              ),
              label: 'Order'
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.perm_contact_calendar_sharp,
                color:Palette.bg4
              ),
              icon: new Icon(
                Icons.perm_contact_calendar_sharp,
                color: Colors.grey
              ),
              label: 'Profile'
            ),

          ],
        ),
    );
  }
}