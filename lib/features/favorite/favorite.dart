import 'package:flutter/material.dart';

class fav_view extends StatefulWidget {
  const fav_view({super.key});

  @override
  State<fav_view> createState() => _fav_viewState();
}

class _fav_viewState extends State<fav_view> {
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
