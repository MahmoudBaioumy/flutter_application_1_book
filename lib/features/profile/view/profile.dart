import 'package:flutter/material.dart';

class profile_view extends StatefulWidget {
  const profile_view({super.key});

  @override
  State<profile_view> createState() => _profile_viewState();
}

class _profile_viewState extends State<profile_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profileeeeeee'),
      ),
    );
  }
}
