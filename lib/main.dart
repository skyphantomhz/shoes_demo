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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 220.0,
                      margin: EdgeInsets.fromLTRB(60.0, 60.0, 0, 0),
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Container(
                      alignment: Alignment(0.75, 0.0),
                      margin: EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "\$84",
                            style: TextStyle(
                                fontFamily: 'Sofia-Pro',
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Review :",
                            style: TextStyle(
                                fontFamily: 'Sofia-Pro',
                                fontWeight: FontWeight.w800),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
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
                    ),
                  ],
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
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
              child: Text(
                "Material: Textile",
                style: TextStyle(
                    fontFamily: 'Sofia-Pro', fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60.0, 10.0, 30.0, 0.0),
              child: Text(
                "Size & Fit : This brand runs true to size to ensure the best fit",
                softWrap: true,
                style: TextStyle(
                    fontFamily: 'Sofia-Pro', fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60.0, 20.0, 0, 20.0),
              child: Row(
                children: <Widget>[
                  _sizeSelection("6"),
                  _sizeSelection("7"),
                  _sizeSelection("8"),
                  _sizeSelection("9"),
                  Container(
                    width: 2.0,
                    height: 50.0,
                    margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(32, 24, 27, 1)),
                  ),
                  _colorSelection(0xff333335),
                  _colorSelection(0xff3f4cde),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String sizeSelected = "6";
  Widget _sizeSelection(String size) {
    return GestureDetector(
      onTap: () {
        if (sizeSelected != size)
          setState(() {
            sizeSelected = size;
          });
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: sizeSelected == size
                ? Colors.white
                : Color.fromRGBO(238, 238, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(size,
            style: TextStyle(
                fontFamily: 'Sofia-Pro', fontWeight: FontWeight.w800)),
      ),
    );
  }

  Widget _colorSelection(int color) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Color(color)),
      ),
    );
  }
}
