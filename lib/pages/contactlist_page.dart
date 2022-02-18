import 'dart:async';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/pages/search_page.dart';

import '../providers/home_provider.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  List<Contact> contacts= [];

  Future<List<Contact>> getContacts() async{
    return await ContactsService.getContacts();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Contact'),
            Text(contacts.length.toString(), style: const TextStyle(fontSize: 14),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder) => const SearchPage()));
          }, icon:const Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){
            context.read<HomeProvider>().showPopupMenu(context);
          }, icon:const Icon(Icons.more_vert_outlined, color: Colors.white,)),
        ],
      ),

      body: Container(
        margin: const EdgeInsets.all(10),
        child: FutureBuilder(
          future: getContacts(),
          builder: (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {

            if(snapshot.hasData){
              contacts = snapshot.data!;
              contacts.sort((a, b) => a.toString().toLowerCase().compareTo(b.toString().toLowerCase()));
              return ListView.builder(
                itemCount: contacts.length,
                  itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                         const CircleAvatar(
                           radius: 15,
                           backgroundImage: AssetImage('assets/images/user.png'),
                         ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${contacts[index].displayName}"),
                            contacts[index].phones!.isNotEmpty ? Text("${contacts[index].phones![0].value}"):
                            const Text("No Contact Found."),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                );
              });
            }
              return const Center(child: CircularProgressIndicator(),);

          }),
      ),
      );

  }
}
