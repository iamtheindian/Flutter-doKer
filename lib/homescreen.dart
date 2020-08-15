import 'package:doKer/sizeconfiguration.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExplorer = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF93D8F8),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(79),
          child: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () => print('i was tappd'),
            ),
            title: Text(
              'doKer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 5.0,
            backgroundColor: Color(0XFF2F2D51),
            shadowColor: Color(0XFFF2A7FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(44),
              ),
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: Responsive.heightMultiplier * 9,
              ),
              Container(
                height: Responsive.heightMultiplier * 17,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0XFF1c1c1c),
                        offset: Offset(9.0, 9.0),
                        blurRadius: 22.0,
                      ),
                      new BoxShadow(
                        color: Color(0XFF404040),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 22.0,
                      ),
                    ],
                    color: Colors.white),
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Docker",
                            style: TextStyle(
                              fontSize: 3.6 * Responsive.textMultiplier,
                              color: Colors.deepOrangeAccent,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          WidgetSpan(
                            child: Icon(Icons.panorama_wide_angle),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Responsive.heightMultiplier * 1),
                    Center(
                      child: RaisedButton(
                        highlightColor: Colors.blue[50],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        onPressed: () => setState(() {
                          isExplorer = true;
                        }),
                        child: Text(
                          'Explore',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
