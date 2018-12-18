import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double num1,num2,ans = 0;
  double siz = 24.0;

  TextEditingController t1 = new TextEditingController(text: '0');
  TextEditingController t2 = new TextEditingController(text: '0');

  void add()
  {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    setState(() {
          ans = num1 + num2;
        });
  }
  void sub()
  {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    setState(() {
          ans = num1 - num2;
        });
  }
  void mul()
  {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    setState(() {
          ans = num1 * num2;
        });
  }
  void div()
  {
    num1 = double.parse(t1.text);
    num2 = double.parse(t2.text);
    setState(() {
          ans = num1 / num2;
        });
  }

  void doClear()
  {
    setState(() {
          t2.text = '0';
          t1.text = '0';
          ans = 0;
        });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text('Calculator', 
            style: TextStyle(color: Colors.white70),),
        )
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter 1st Number'
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter 2st Number'
                ),
                controller: t2,
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('+', style: TextStyle(fontSize: siz),),
                    onPressed: add,
                    color: Colors.greenAccent,
                  ),
                  new MaterialButton(
                    child: new Text('-', style: TextStyle(fontSize: siz),),
                    onPressed: sub,
                    color: Colors.greenAccent,
                  )
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('*', style: TextStyle(fontSize: siz),),
                    onPressed: mul,
                    color: Colors.greenAccent,
                  ),
                  new MaterialButton(
                    child: new Text('/', style: TextStyle(fontSize: siz),),
                    onPressed: div,
                    color: Colors.greenAccent,
                  )
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0),),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text('Clear', style: TextStyle(fontSize: 20.0),),
                    onPressed: doClear,
                    color: Colors.greenAccent,
                  ),
                ],
              ),

              new Padding(padding: EdgeInsets.only(top: 20.0),),
              new Text('Output: $ans',style: TextStyle(fontSize: 24.0, 
                fontWeight: FontWeight.bold),)
            ],
          ),
      ),
    );
  }
}