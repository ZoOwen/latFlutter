import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgets.add(Text("data kek-" + i.toString(),style: TextStyle(fontSize: 50),));
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    child: Text("Tambah data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text("Delete data"),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

class MyAppTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah Text!2",
            style: TextStyle(
                fontFamily: "CrashLandingBB",
                fontSize: 40,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationColor: Colors.blue,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}

class MyAppAnonymMethod extends StatefulWidget {
  @override
  _MyAppAnonymMethodState createState() => _MyAppAnonymMethodState();
}

class _MyAppAnonymMethodState extends State<MyAppAnonymMethod> {
  String message = "tombol belum ditekan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("press me"),
                onPressed: () {
                  setState(() {
                    message = "tombol sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

//stateful widget
class MyAppLat extends StatefulWidget {
  @override
  _MyAppLatState createState() => _MyAppLatState();
}

class _MyAppLatState extends State<MyAppLat> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(child: Text("add Bilangan"), onPressed: tekanTombol)
            ],
          ),
        ),
      ),
    );
  }
}

//endstateful widget

//latihan container
class MyAppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
}

//latihan column dan row
class MyAppColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lat column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("text 1"),
            Text("text 2"),
            Text("text 3"),
            Row(
              children: <Widget>[
                Text("text 4"),
                Text("text 5"),
                Text("text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
