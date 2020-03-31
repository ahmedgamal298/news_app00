import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAV extends StatefulWidget {
  @override
  _FAVState createState() => _FAVState();
}

class _FAVState extends State<FAV> {
  List<Color> colorsList = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.brown,
    Colors.purple,
  ];
  Random random = Random();

  Color _getRandomColor() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                _authorRow(),
                SizedBox(height: 16,),
                _NewsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/placeholder_bg.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle),
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ahmed Gamal",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "15 min",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    " Life Style ",
                    style: TextStyle(
                      color: _getRandomColor(),
                    ),
                  )
                ],
              )
            ],
          )
        ]),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _NewsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/placeholder_bg.jpg'),
                  fit: BoxFit.cover)),
          width: 120,
          height: 120,
          margin: EdgeInsets.only(right: 16),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text("The evey time you come here ",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,

              ),),
              Text(
                  "We also talk about t this one of the company also",style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                height: 1
              ),),
            ],
          ),
        )
      ],
    );
  }
}
