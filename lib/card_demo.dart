import 'package:flutter/material.dart';

class CardDemo extends StatefulWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.grey,
      child: Card(
        color: Colors.cyan[50],
        elevation: 20,
        // shape: ,

      ),
    );
  }
}
