import 'package:flutter/material.dart';
class PageOne extends StatefulWidget {
  const PageOne({super.key});
  @override
  State<PageOne> createState() => _PageOneState();


}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the PageOne widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

