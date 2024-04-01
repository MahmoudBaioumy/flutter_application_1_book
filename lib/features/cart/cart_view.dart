import 'package:flutter/material.dart';

class cart_view extends StatefulWidget {
  const cart_view({super.key});

  @override
  State<cart_view> createState() => _cart_viewState();
}

class _cart_viewState extends State<cart_view> {
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
