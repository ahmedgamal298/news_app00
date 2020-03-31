import 'package:flutter/material.dart';
import 'package:news_app00/screens/home_tabs/FAV.dart';
import 'package:news_app00/screens/home_tabs/Popular.dart';
import 'package:news_app00/shared_ui/navigation_drawer.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headline Neeews"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "WHATS' NEW ",
            ),
            Tab(
              text: "POPULAR ",
            ),
            Tab(
              text: "FAVOURITES" ,)
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(children: [
          FAV(),
          Popular(),
          FAV(),


        ], controller: _tabController,),
      ),
    );

  }
}
