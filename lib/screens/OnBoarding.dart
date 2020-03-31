import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app00/screens/HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomeScreen.dart';
import '../PageModel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);


  void _addPages() {
    pages = List<PageModel>();
    pages.add(PageModel(
        'Welcome',
        'Making Friend is easy as wave your hand back and forth in easy step1',
        Icons.directions_run,
        'assets/images/bg3.png'));
    pages.add(PageModel(
        'ALarm',
        'Making Friend is easy as wave your hand back and forth in easy step2',
        Icons.access_alarm,
        'assets/images/bg2.png'));
    pages.add(PageModel(
        'Exit',
        'Making Friend is easy as wave your hand back and forth in easy step3',
        Icons.exit_to_app,
        'assets/images/bg1.png'));
    pages.add(PageModel(
        'Print',
        'Making Friend is easy as wave your hand back and forth in easy step4',
        Icons.print,
        'assets/images/bg.png'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(
                            pages[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 70,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -50),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 48, right: 48, top: 18),
                        child: Text(
                          pages[index].decription,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
        ),
        Transform.translate(
          offset: Offset(0, 110),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: _displayPageIndicators(pages.length),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.red.shade900,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    _updateSeen();
                    return HomeScreen();
                  }));
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, letterSpacing: 1),
                ),

              ),

            ),
          ),
        )
      ],
    );
  }


  Widget _displayPageIndicators(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }


  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}
