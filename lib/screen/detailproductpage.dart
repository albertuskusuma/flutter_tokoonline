import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailProductPage extends StatefulWidget {
  final String paramId;

  DetailProductPage({Key key, @required this.paramId}) : super(key: key);

  @override
  _DetailProductPageState createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {

    const htmlData = """
      <ul>
        <li>Operating System : Windows</li>
        <li>Kondisi : Pernah Dipakai</li>
        <li>Memory RAM : 4GB/8GB</li>
      </ul>
    """;

    return Scaffold(
        appBar: AppBar(
          // title: Text(widget.paramId),
          title: Text('Product Detail'),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: true,
                        ),
                        items: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/ps4_console_white_1.png',
                                      width: 10000,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                      ),
                                    ),
                                  ],
                                )),
                          ),

                          // Container(
                          //   margin: EdgeInsets.all(8),
                          //   child: ClipRRect(
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(10)),
                          //     child: Image.asset(
                          //       'assets/ps4_console_white_1]].png',
                          //       width: 10000,
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 2),
                  child: Text(
                    'Laptop Dell latitude gaming core i5 gaming ram 4gb/8gb HDD 320/500GB',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Row(
                    children: [
                      Text(
                        'Rp 10.000.000',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[400]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rp 8.000.000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        'Spesification',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Html(
                  shrinkWrap: true,
                  data: htmlData,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: EdgeInsets.only(left: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              print('baru');
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.pink[200],
            ),
          ),
          // Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // background color
              primary: Colors.green[200],
              textStyle: TextStyle(fontSize: 17),
            ),
            child: Text('Add To Cart'.toUpperCase()),
            onPressed: () {
              print('Button clicked!');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // background color
              primary: Colors.pink[300],
              textStyle: TextStyle(fontSize: 17),
            ),
            child: Text('Buy Now'.toUpperCase()),
            onPressed: () {
              print('Button clicked!');
            },
          ),
        ],
      ),
    );
  }
}
