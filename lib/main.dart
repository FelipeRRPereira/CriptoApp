import 'package:cripto_app/views/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(CriptoApp());

class CriptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cripto App',
      theme: ThemeData(
        primarySwatch: Colors.purpleAccent[600],
      ),
      home: Dashboard(title: 'Current Portfolio'),
    );
  }
}

