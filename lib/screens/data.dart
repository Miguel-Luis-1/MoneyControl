import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/home.dart';
import '../constants/colors.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
    );
  }
}
