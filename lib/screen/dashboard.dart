import 'package:flutter/material.dart';
import 'package:flutter_tokoonline/helper/constant.dart';
import 'package:flutter_tokoonline/screen/categorypage.dart';
import 'package:flutter_tokoonline/screen/component/searchdashboard.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin {
  
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex(){
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
        title: TextField(
          onTap: (){

          },
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(
              Icons.search,
              color: Palette.bg2,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical:10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(
                color: Colors.orange[900]
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true
          ),
        ),
        backgroundColor: Palette.bg4,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Palette.orange,
          labelColor: Palette.white,
          unselectedLabelColor: Colors.orange.shade300,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Categories')
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          SearchDashboard(),
          CategoryPage()
        ],
      )
    );
  }
}