import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0;
  double sum = 0;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void Add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void Subtract() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void Multiply() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void Divide() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void Clear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Center(
        child: new Text("Calculator",style: TextStyle(color:Colors.blueGrey),),
      )),
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: new InputDecoration(
                  hintText: "Enter number 1",
                ),
                controller: t1,
              ),
              new Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter number 2"),
                controller: t2,
              ),
              new Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+",
                    style: TextStyle(color:Colors.white),),
                    onPressed: Add,
                    color: Colors.indigo,
                    splashColor: Colors.lightBlue,
                    focusColor: Colors.lightBlueAccent,
                  ),
                  new MaterialButton(
                    child: new Text(
                      "-",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: Subtract,
                    color: Colors.indigo,
                    splashColor: Colors.lightBlue,
                    focusColor: Colors.lightBlueAccent,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*",
                    style: TextStyle(color:Colors.white),),
                    onPressed: Multiply,
                    color: Colors.indigo,
                    splashColor: Colors.lightBlue,
                    focusColor: Colors.lightBlueAccent,
                  ),
                  new MaterialButton(
                    child: new Text(
                      "/",
                      style: TextStyle(color:Colors.white),
                    ),
                    onPressed: Divide,
                    color: Colors.indigo,
                    splashColor: Colors.lightBlue,
                    focusColor: Colors.lightBlueAccent,
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 5.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                new Text("Output : ",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                new Text("$sum",style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.redAccent,
                    fontWeight:FontWeight.bold))
              ],),
              new Padding(padding: EdgeInsets.only(top:5.0)),


              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    onPressed: Clear,
                    child: Text("Clear",
                    style: TextStyle(color:Colors.white)),
                    color: Colors.teal,
                    splashColor: Colors.lightBlue,
                    focusColor: Colors.lightBlueAccent,
                    colorBrightness: Brightness.light,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
