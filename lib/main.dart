import 'package:flutter/material.dart';
import 'package:ordo_test/core/_core.dart';
import 'package:ordo_test/main_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: GlobalState.injectData,
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: nav.navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      ),
    );
  }
}
