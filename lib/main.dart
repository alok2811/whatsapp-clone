import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/helpers/app_theme.dart';
import 'package:whatsapp/pages/splash_page.dart';
import 'package:whatsapp/providers/home_provider.dart';
import 'package:whatsapp/providers/splash_provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (create) => SplashProvider()),
            ChangeNotifierProvider(create: (create) => HomeProvider()),
          ],
          child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WhatsApp',
      theme: myTheme,
      darkTheme: ThemeData.dark(),
      home: const SplashPage(),
    );
  }
}


