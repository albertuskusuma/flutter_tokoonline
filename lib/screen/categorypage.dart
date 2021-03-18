import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) => Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Color(0xFF979797).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    'assets/ps4_console_white_1.png',
                  ),
                ),
              ),
              title: Text('Laptop'),
              subtitle: Text('12 Items'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Sun');
              },
            ),
          ),
        ),
      ),
    );
  }
}
