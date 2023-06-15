import 'package:flutter/material.dart';

import 'detils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: detils(),
      debugShowCheckedModeBanner: false,
    );
  }
}
