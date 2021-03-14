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
              // Best Seller

              // Title
              Column(
            children: [
              Container(
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
                    ]),
              ),

              // Container(
              //   height: 200,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     physics: ClampingScrollPhysics(),
              //     itemCount: 5,
              //     itemBuilder: (BuildContext context, index) =>
              //     Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: <Widget>[
              //         Expanded(
              //           child: Column(
              //             children: [
              //               Stack(
              //                 children: <Widget>[
              //                   Image.asset(
              //                     'assets/laptop.jpg',
              //                     fit: BoxFit.cover,
              //                     height: 100,
              //                   ),
              //                   Positioned(
              //                     top: 1,
              //                     right: 9,
              //                     child: Container(
              //                       alignment: Alignment.center,
              //                       width: 24,
              //                       height: 24,
              //                       decoration: BoxDecoration(
              //                           shape: BoxShape.circle,
              //                           color: Colors.orange[800]),
              //                       child: Text(
              //                         '30%',
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 10),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               SizedBox(
              //                 height: 6,
              //               ),
              //               Positioned(
              //                 left: -100,
              //                 child: Text('sasa'))
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )

              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) => Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey[300]),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey[300])
                        ]),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/laptop.jpg',
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo),
                                  child: Text(
                                    '30%',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        productTitle.length > 15
                            ? Text('${productTitle.substring(0, 14)}...')
                            : Text('${productTitle}'),
                        Text('Rp 12.000.000')
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Title

      // Best Seller
    );
  }
}
