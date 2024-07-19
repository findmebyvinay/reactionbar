import'package:flutter/material.dart';

class ReactPage extends StatefulWidget {
  const ReactPage({super.key});

  @override
  State<ReactPage> createState() => _ReactPageState();
}

class _ReactPageState extends State<ReactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Reaction Bar !😎'),
        centerTitle: true,
        backgroundColor: Colors.brown[300],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          
        ],
      ),
    );

  }
}