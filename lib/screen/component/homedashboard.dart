import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  String productTitle = "Laptop Lenovo 12 inch";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child:

              // Title Best Seller
              Column(
            children: [
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
                                          margin: EdgeInsets.only(right: 5,top:2),
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
                                              style: TextStyle(fontSize: 12,color: Colors.white),
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
                                          margin: EdgeInsets.only(right: 5,top:2),
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
                                              style: TextStyle(fontSize: 12,color: Colors.white),
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
