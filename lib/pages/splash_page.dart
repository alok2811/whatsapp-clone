import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:whatsapp/pages/home_page.dart';
import 'package:whatsapp/pages/login_page.dart';
import 'package:whatsapp/providers/splash_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    context.read<SplashProvider>().futurePage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp_logo.png',height: 100, width: 100,),
            const SizedBox(height: 5,),
            const Text('WhatsApp'),
          ],
        ),
      ),
    );
  }
}
