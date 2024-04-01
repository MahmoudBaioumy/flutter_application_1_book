import 'package:flutter/material.dart';

class Books_view extends StatefulWidget {
  const Books_view({super.key});

  @override
  State<Books_view> createState() => _Books_viewState();
}

class _Books_viewState extends State<Books_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [Text('booooooooks')],
        ),
      ),
    );
  }
}
