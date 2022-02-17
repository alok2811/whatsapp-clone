import 'package:flutter/material.dart';
import 'package:whatsapp/pages/message_view.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { },
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.message, color: Colors.white,),),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
           const SizedBox(height: 10,),
            ListTile(
              leading:const CircleAvatar(
                backgroundImage: AssetImage('assets/images/alok.png'),
                radius: 25,
              ),
              title:const Text('Alok Dubey'),
              trailing: const Text("10:47 AM"),
              subtitle: const Text('Hello, World!'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder) => MessageView(name: 'Alok Dubey')));
              },
            ),
           const Divider(),

          ],
        ),
      ),
    );
  }
}