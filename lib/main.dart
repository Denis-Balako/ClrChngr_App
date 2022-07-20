import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
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
    );
  }
}
