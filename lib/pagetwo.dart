import 'package:flutter/material.dart';
class PageTwo extends StatefulWidget {
  const PageTwo({super.key});
  @override
  State<PageTwo> createState() => _PageTwoState();


}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the PageTwo widget
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

