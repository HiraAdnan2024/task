import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

// starting point of the app
// flitter engine initiallize
void main() {
  // responsible to start the app and display UI
  runApp(MyApp()); // top level widget and responsible for configuring the app theme 
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textController = TextEditingController();
  String _outputText = '';

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _updateOutputText() {
    setState(() {
      _outputText = _textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Output Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter text here',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _updateOutputText,
              child: Text('Submit'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Output: $_outputText',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
