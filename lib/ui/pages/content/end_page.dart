import 'package:flutter/material.dart';
import 'package:get/get.dart';


class end_page extends StatelessWidget {
  const end_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ep(),
    );
  }
}

class ep extends StatefulWidget {
  @override
  _ep createState() => _ep();
}

class _ep extends State<ep> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Calculadora Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          
          
          
        ],
      ),
    );
  }
}