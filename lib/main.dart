import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Sheet",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bottom Sheet",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 250,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Mango"),
                            subtitle: Text("this is Mango"),
                            trailing: Icon(Icons.access_alarms),
                          ),
                          ListTile(
                            title: Text("Orange"),
                            subtitle: Text("this is Orange"),
                            trailing: Icon(Icons.access_alarms),
                          ),
                          ListTile(
                            title: Text("Banana"),
                            subtitle: Text("this is Banana"),
                            trailing: Icon(Icons.access_alarms),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text(
              "Click Me",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
