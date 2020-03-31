import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _drawHeader(),
            _drawTopStores(),
          ]),
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
        color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600);
    TextStyle _headerDescription = TextStyle(color: Colors.white, fontSize: 20);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/placeholder_bg.jpg'),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, top: 23),
                child: Text(
                  "How teriers & Royals Gatecrushed final",
                  style: _headerTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "loem ipsd dolr sit amet conatuctor elit do enclusmod",
                  style: _headerDescription,
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }

  Widget _drawTopStores() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: _drawSectionTitle("Top Stories"),
          ),
          _drawSingleRow(),
          _drawDivider(),
          _drawSingleRow(),
          _drawDivider(),
          _drawSingleRow(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, left: 16, top: 8),
                  child: _drawSectionTitle("Recent Update"),
                ),
                _drawRecentUpdate(Colors.deepOrange, "SPORT"),
                _drawRecentUpdate(Colors.teal, "MEAL"),
                _drawRecentUpdate(Colors.green, "ASD"),
                SizedBox(height: 48,)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Image(
                      image:
                          ExactAssetImage('assets/images/placeholder_bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'The World global warning annual Summit ',
                          maxLines: 2,
                        ),
                        SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Michel alarre'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.timer),
                                Text('15 min'),
                              ],
                            )
                          ],
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
    );
  }

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w600,
          fontSize: 16),
    );
  }

  Widget _drawDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey,
    );
  }

  Widget _drawRecentUpdate(Color color, String title) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/placeholder_bg.jpg'),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 2, bottom: 2, right: 24),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: _drawRecentUpdateTitle(title),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
            child: Text(
              'On of the best this is to do what you saw that is right at any time ',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 4,),
                Text(
                  "15 min",
                  style: TextStyle(color: Colors.grey,fontSize: 14),

                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _drawRecentUpdateTitle(String s) {
    return Text(
      s,
      style: TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}
