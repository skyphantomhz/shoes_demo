import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xfff4f4fb)),
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: 220.0,
                  margin: EdgeInsets.fromLTRB(60.0, 60.0, 0, 0),
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Positioned(
                  left: 45.0,
                  top: 45.0,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              offset: Offset(0, 4.0))
                        ]),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30.0,
                  top: 45.0,
                  child: Stack(
                    alignment: Alignment.topRight,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 1.0)
                            ]),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xff3f4cdE),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -7.0,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff3f4cdE)),
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // cost and review star
                Positioned(
                  top: 300.0,
                  right: 35.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\$84",
                        style: TextStyle(
                            fontFamily: 'Sofia',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Review :",
                        style: TextStyle(fontFamily: 'Sofia'),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 10.0,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                          ),
                          Icon(
                            Icons.star,
                            size: 10.0,
                            color: Colors.black26,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
