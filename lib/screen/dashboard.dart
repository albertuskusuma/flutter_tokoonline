import 'package:flutter/material.dart';
import 'package:flutter_tokoonline/screen/detailproductpage.dart';
import 'package:flutter_tokoonline/screen/favoritepage.dart';

import 'cartpage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          child: topNav(context),
        ),
        backgroundColor: Color.fromRGBO(253, 253, 253, 0.9),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              // Title Best Seller
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Best Seller',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue[600],
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              // Title Best Seller

              // Best Seller
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SizedBox(
                      width: 120,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailProductPage(paramId: "1"),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.02,
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xFF979797).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(right: 5, top: 2),
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 26,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.indigo),
                                            child: Text(
                                              "30%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/ps4_console_white_1.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'Laptop baru asus murah meriah harga nego sekarang',
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Rp 12.000.000'),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Best Seller

              // Title New Product
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'New Product',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue[600],
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              // Title New Product

              // New Product
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SizedBox(
                      width: 120,
                      child: InkWell(
                        onTap: () {
                          print('lala');
                        },
                        child: Column(
                          children: [
                            Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1.02,
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xFF979797).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(right: 5, top: 2),
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 26,
                                            height: 26,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.indigo),
                                            child: Text(
                                              "30%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/ps4_console_white_1.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  'Laptop baru asus murah meriah harga nego sekarang',
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Rp 12.000.000'),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // New Product
            ],
          ),
        ),
      ),
    );
  }
}

Widget topNav(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),

        // Top Nav
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.68,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Color(0xFF979797).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    onTap: () {
                      print('Go To Search Page');
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: 'Search Product',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),

                // shopping cart
                Container(
                  width: MediaQuery.of(context).size.width * 0.11,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Color(0xFF979797).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      TextField(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            ),
                          );
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.shopping_cart_sharp),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 5, left: 4),
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffc32c37),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Center(
                              child: Text(
                                "90",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // shopping

                SizedBox(
                  width: 12,
                ),

               
              ],
            ),
          ),
        ),
        // Top Nav
      ],
    ),
  );
}
