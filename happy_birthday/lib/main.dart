import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
  bool _show = true;
  final _path = "assets/firework.gif";
  String path = "assets/transparent.png";
  final _text = "HAPPY BIRTHDAY";
  String textToShow = "";
  final _text2 = "What is this ?";
  String textToShow2 = "What is this ?";
  IconData _icon = Icons.favorite;
  IconData iconToShow = Icons.help_center_outlined;

  void updateContent() {
    setState(() {
      if (_show) {
        _show = false;
        path = _path;
        textToShow = _text;
        textToShow2 = "";
        iconToShow = _icon;
      } else {
        _show = true;
        textToShow = "";
        path = "assets/transparent.png";
        textToShow2 = _text2;
        iconToShow = Icons.help_center_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$textToShow",
              style: TextStyle(fontSize: 45, color: Colors.amber),
            ),
            Image.asset(path),
            FlatButton(
                child: Icon(
                  iconToShow,
                  color: Colors.amber,
                  size: 145,
                ),
                onPressed: () {
                  print("$_show");
                  updateContent();
                }),
            Text(
              "$textToShow2",
              style: TextStyle(fontSize: 40, color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
