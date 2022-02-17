import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';

class SplashProvider with ChangeNotifier{

  void futurePage(BuildContext context){
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => const HomePage()));
    });
  }


}