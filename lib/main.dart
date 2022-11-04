import 'package:alidemircan/posts_model.dart';
import 'package:alidemircan/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return HomePageProvider();
      },
      child: const App()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
      ).copyWith(
        secondary: Colors.green,
      )),
      home:  HomePage(),
    );
  }
}
