import 'package:flutter/cupertino.dart';
import 'package:flutter_grid_application/home_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
