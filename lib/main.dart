import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _counter = 50;

  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 115, 128, 245),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
          title: const Text(
            'Counter',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 65, 87, 214),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tap \"-\" to decrement',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 140, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.indigo[50],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _increment,
                        tooltip: 'Increase 1',
                        icon: Icon(Icons.add),
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: _decrement,
                        tooltip: 'Increase 1',
                        icon: Icon(Icons.remove),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Tap \"+\" to decrement',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
