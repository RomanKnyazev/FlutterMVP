import 'package:flutter/material.dart';
import '../view/view.dart';
import '../presenter/presenter.dart';

class HomePage extends StatefulWidget {
  final Presenter presenter;

  HomePage(this.presenter, {Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements CounterView {
  @override
  Widget build(BuildContext context) {
    var _unitView = Container(
      color: Colors.grey.shade200,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('MVP'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent.shade400,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: 100.0,
              height: 100.0,
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            _unitView,
            Padding(padding: EdgeInsets.all(5.0)),
            _unitView,
          ],
        ));
  }
}
