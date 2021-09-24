import 'package:flutter/material.dart';
class secondscreen extends StatefulWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page 2",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
            Text("Second Page",style: TextStyle(fontSize: 30),),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Back Home",
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
