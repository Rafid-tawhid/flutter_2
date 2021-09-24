import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pages",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePag(),
    );
  }
}
class HomePag extends StatefulWidget {
  const HomePag({Key? key}) : super(key: key);

  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pages"),

      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Page",style: TextStyle(fontSize: 30),),
           FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Back",
                  style: TextStyle(fontSize: 24,color: Colors.white),
                ),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}


