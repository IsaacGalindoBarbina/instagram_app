import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  final String title;
  const Splash({super.key, required this.title});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4),
        () => Navigator.pushReplacementNamed(context, '/menu'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/87/87390.png',
                width: 400,
                height: 250,
              ),
              Text('${widget.title}')
            ]),
      ),
    );
  }
}
