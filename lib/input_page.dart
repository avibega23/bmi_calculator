import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white),
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey, // Color of the bottom border
            width: 2.0, // Thickness of the bottom border
          ),
        ),
      ),
      body: const Center(
        child: Text("Body Text"),
      ),
    );
  }
}
