import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'package:news_app/utils/svg_example.dart';

import 'utils/app_theme.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: StreamContrl.setTheme.stream,
      initialData: true,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        debugPrint(snapshot.data.toString());
        return MaterialApp(
          theme: snapshot.data ? DigiTheme.light() : DigiTheme.dark(),
          debugShowCheckedModeBanner: false,
          title: "News App",
          home: const SvgExample(),
          // initialRoute: mainNavigation.initialRoute(),
          // routes: mainNavigation.routes,
        );
      },
    );
  }
}

class StreamContrl {
  static StreamController<bool> setTheme = StreamController();
}
