import 'package:flutter/material.dart';
import 'package:news_app00/shared_ui/navigation_drawer.dart';
import 'home_tabs/FAV.dart';
import 'home_tabs/Popular.dart';
import 'home_tabs/WhatsNew.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu {
  HELP,
  ABOUT,
  CONTACT,
  SETTING,
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popOutMenu(context),
        ],
        bottom: TabBar(
          indicatorColor: Colors.teal,
          tabs: <Widget>[
            Tab(
              text: "WHATS' NEW ",
            ),
            Tab(
              text: "POPULAR ",
            ),
            Tab(
              text: "FAVOURITES",
            )
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: [
            WhatsNew(),
            Popular(),
            FAV(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.ABOUT,
            child: Text("About"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.CONTACT,
            child: Text("Contact"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.HELP,
            child: Text("Help"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.SETTING,
            child: Text("Setting"),
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {
        //TODO
      },
    );
  }
}
