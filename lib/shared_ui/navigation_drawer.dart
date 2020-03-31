import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app00/modols/Nav_menu.dart';
import 'package:news_app00/screens/HomeScreen.dart';
import 'package:news_app00/modols/headline_news.dart';
import 'package:news_app00/screens/facebook_feed.dart';
import 'package:news_app00/screens/home_tabs/Instagram_feed.dart';
import 'package:news_app00/screens/twitter_feed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigatoinMenu = [
    NavMenuItem("Explore", () => HomeScreen()),
    NavMenuItem("Head Line ", () => HeadLineNews()),
    NavMenuItem("Twetter Feeds",() =>TwetterFeed()),
    NavMenuItem("Facebook Feeds",()=>facebookFeed()),
    NavMenuItem("Instageam Feeds", ()=> InstagramFeed()),
  ];

  //create list of menu
  List<String> navMenu = [
    'Home',
    'Explore',
    'HeadLine News',
    'Read Later',
    'Videos',
    'Photos',
    'Setting',
    'Logout'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.35,
      child: Drawer(
          child: Padding(
        padding: EdgeInsets.only(top: 75, left: 24),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  navigatoinMenu[position].title,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return navigatoinMenu[position].destination();
                  }));
                },
              ),
            );
          },
          itemCount: navigatoinMenu.length,
        ),
      )),
    );
  }
}
