import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        onGenerateRoute: (setting) {
          switch (setting.name) {
            case '/':
              return MaterialPageRoute(
                  builder: (context) => const MyHomePage());
            default:
              return MaterialPageRoute(
                  builder: (context) => const MyHomePage());
          }
        },
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white),
                centerTitle: true,
                elevation: 0.0,
                backgroundColor: Colors.black)),
        initialRoute: '/');
  }
}
