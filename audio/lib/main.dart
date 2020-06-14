import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

AudioCache audioPlayer = AudioCache();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int result = -1;

  @override
  void initState() {
    super.initState();
  }

  void _playSound() {
    result *= -1;
    setState(() {
      audioPlayer.play("audio.mp3");
      result;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(result == 1 ? "yes" : "no"),
      floatingActionButton: FloatingActionButton(
        onPressed: _playSound,
        child: Icon(Icons.play_arrow),
      ), 
    );
  }
}
