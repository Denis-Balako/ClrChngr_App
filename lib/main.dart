import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  /// standard constructor
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClrChngr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
        appBarTheme: AppBarTheme(
          toolbarTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                headline6: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                ),
              )
              .bodyText2,
          titleTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                headline6: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                ),
              )
              .headline6,
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF2a4494),
          onPrimary: Color(0xFFffffff),
          primaryContainer: Color(0xFF606fc5),
          onPrimaryContainer: Color(0xFF001e65),
          secondary: Color(0xFF44cfcb),
          onSecondary: Color(0xFF000000),
          secondaryContainer: Color(0xFF80fffe),
          onSecondaryContainer: Color(0xFF009d9a),
          tertiary: Color(0xFF525E7D),
          onTertiary: Color(0xFFffffff),
          tertiaryContainer: Color(0xFFD9E2FF),
          onTertiaryContainer: Color(0xFF0E1A37),
          error: Color(0xFFBA1B1B),
          onError: Color(0xFFFFFFFF),
          errorContainer: Color(0xFFFFDAD4),
          onErrorContainer: Color(0xFF410001),
          background: Color(0xFFFBFDFD),
          onBackground: Color(0xFF191C1D),
          surface: Color(0xFFFBFDFD),
          onSurface: Color(0xFF191C1D),
        ),
      ),
      home: const MyHomePage(title: 'ClrChngr'),
    );
  }
}

/// Main Page
class MyHomePage extends StatefulWidget {
  final String title;

  /// Main Page constructor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? mainBackgroundcolor;

  // void initState() {
  //   super.initState();

  //   mainBackgroundcolor = _getRandomColor();
  // }

  Color _getRandomColor() {
    final newColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

    return newColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            mainBackgroundcolor = _getRandomColor();
          });
          // change backgroundColor
        },
        child: Container(
          color: mainBackgroundcolor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hey there',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
