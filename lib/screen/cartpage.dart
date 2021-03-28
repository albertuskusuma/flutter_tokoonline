import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Color.fromRGBO(255, 122, 201, 0.9),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) =>
                    //
                    Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                right: 8, left: 8, top: 8, bottom: 8),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              color: Colors.blue.shade200,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/ps4_console_white_1.png"),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 8, top: 4),
                                    child: Text(
                                      "NIKE XTM Basketball Shoeas",
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Green M",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "\$299.00",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  print('decrement');
                                                },
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 24,
                                                  color: Colors.grey.shade700,
                                                ),
                                              ),
                                              Container(
                                                color: Colors.grey.shade200,
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    right: 12,
                                                    left: 12),
                                                child: Text(
                                                  "10",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  print('increment');
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  size: 24,
                                                  color: Colors.grey.shade700,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            flex: 100,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('remove');
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 24,
                          height: 24,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10, top: 8),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
                //
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Price Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total Price',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                        Text(
                          'Rp 10.000.000,00',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Colors.lightBlue[600]),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total Discount',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                        Text(
                          'Rp 300.000,00',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Colors.green[600]),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Grand Total',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 13),
                        ),
                        Text(
                          'Rp 9.700.000,00',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // background color
                          primary: Color.fromRGBO(243, 120, 78, 0.7),
                          textStyle: TextStyle(fontSize: 17),
                        ),
                        child: Text('Checkout'.toUpperCase()),
                        onPressed: () {
                          print('Button clicked!');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget emptyCart(BuildContext context) {
  return Container(
    child: Center(
      child: Text('Your cart empty'),
    ),
  );
}
