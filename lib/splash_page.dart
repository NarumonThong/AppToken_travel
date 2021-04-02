import 'dart:async';
import 'package:flutter/material.dart';
import 'package:token_travel/webview_page.dart';
import 'color.dart';

class SplasPage extends StatefulWidget {
  @override
  _SplasPageState createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WebviewPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [pinkColors, pinkLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}

