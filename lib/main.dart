import 'package:flutter/material.dart';
import 'package:todo_mvvn/home_layout/home_layout.dart';
import 'package:todo_mvvn/style/my_theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.light,
        darkTheme: MyThemeData.lightTheme,
        theme:MyThemeData.lightTheme,
        routes:{

    HomeLauOut.routeNamed:(context) => HomeLauOut()

    },
        initialRoute:HomeLauOut.routeNamed

    );
  }
}
