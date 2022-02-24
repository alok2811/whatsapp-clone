import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/pages/camera_page.dart';
import 'package:whatsapp/pages/chat_page.dart';
import 'package:whatsapp/pages/my_story_page.dart';
import 'package:whatsapp/pages/search_page.dart';
import 'package:whatsapp/pages/status_page.dart';
import 'package:whatsapp/providers/home_provider.dart';

import 'call_page.dart';


class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width,
        cameraWidth = _width/24,
        yourWidth = (_width - cameraWidth)/5;

    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) => const SearchPage()));
            }, icon:const Icon(Icons.search, color: Colors.white,)),
            IconButton(onPressed: (){
              context.read<HomeProvider>().showPopupMenu(context);
            }, icon:const Icon(Icons.more_vert_outlined, color: Colors.white,)),
          ],
          bottom:  TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            isScrollable: true,
            tabs: [
              SizedBox(
                child: const Tab(icon: Icon(Icons.camera_alt, color: Colors.white,)),
                width: cameraWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "CHATS",

                ),
                width: yourWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "STATUS",
                ),
                width: yourWidth,
              ),
              SizedBox(
                child: const Tab(
                  text: "CALLS",
                ),
                width: yourWidth,
              ),
          ],),
        ),
        body:   const TabBarView(
          children: [
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallPage(),
          ],
          //controller: _tabController,
        ),
      ),
    );
  }
}
