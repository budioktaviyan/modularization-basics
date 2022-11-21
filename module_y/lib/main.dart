import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FlutterPage(title: 'Flutter'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FlutterPage extends StatefulWidget {
  const FlutterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (() => {
                if (Platform.isAndroid)
                  {SystemNavigator.pop()}
                else if (Platform.isIOS)
                  {exit(0)}
              }),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hi, Flutter!',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
