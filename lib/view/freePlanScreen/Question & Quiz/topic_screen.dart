import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Topic")),
      body: const Center(child: Text("Welcome to Topic Screen")),
    );
  }
}
