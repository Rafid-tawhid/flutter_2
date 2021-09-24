import 'package:flutter/material.dart';
import 'package:flutter_2/secondscreen.dart';
import 'firstscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first':(context)=>firstscreen(),
        '/second':(context)=>secondscreen(),
      },
      title: "Navigations",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                 Navigator.pushNamed(context, '/first');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "First Screen",
                    style: TextStyle(fontSize: 24,color: Colors.white),
                  ),
                ),
                color: Colors.blue,
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Second Screen",
                    style: TextStyle(fontSize: 24,color: Colors.white),
                  ),
                ),
                color: Colors.red,
              ),

            )
          ],
        ),
      ),
    );
  }
}
