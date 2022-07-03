import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue,
    ).copyWith(
      secondary: Colors.green,)
        ),
        home:const HomePage(),

    );
  }
}
