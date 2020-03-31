import 'package:flutter/material.dart';
import 'package:news_app00/shared_ui/navigation_drawer.dart';

class facebookFeed extends StatefulWidget {
  @override
  _facebookFeedState createState() => _facebookFeedState();
}

class _facebookFeedState extends State<facebookFeed> {
  TextStyle _hashStyle = TextStyle(
    color: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FaceBook Feeds"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(),
                  _drawTitle(),
                  _drawHashtags(),
                  _drawBody(),
                  _drawFooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: CircleAvatar(
                backgroundImage:
                    ExactAssetImage('assets/images/placeholder_bg.jpg'),
                radius: 24,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Ahmed Essam ",
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "fri 20 may 2019 , 14:40 ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey.shade400,
            ),
            Transform.translate(
              offset: Offset(-10.0, 0),
              child: Text(
                "24",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        "Do all that you can to hold your dreams ",
        style: TextStyle(color: Colors.grey.shade700),
      ),
    );
  }

  Widget _drawHashtags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "#Advance",
              style: _hashStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "#Advance",
              style: _hashStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "#Advance",
              style: _hashStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image(
        image: ExactAssetImage('assets/images/placeholder_bg.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _drawFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  "34 comment",
                  style: _hashStyle,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  "SHARE",
                  style: _hashStyle,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "OPEN",
                  style: _hashStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
