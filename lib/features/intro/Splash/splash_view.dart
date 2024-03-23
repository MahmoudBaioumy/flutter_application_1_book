import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/function/routing.dart';
import 'package:flutter_application_1/features/auth/presention/view/signup_view.dart';

class Splash_view extends StatefulWidget {
  const Splash_view({super.key});

  @override
  State<Splash_view> createState() => _Splash_viewState();
}

class _Splash_viewState extends State<Splash_view> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      pushwithReplacement(context, const signup_viwe());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/Picture.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
