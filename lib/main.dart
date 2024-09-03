import 'package:currencyconvertor/widgets/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData.dark(
      useMaterial3: true
    ),
    home: const Home(),
    debugShowCheckedModeBanner: false,
  ));
}
