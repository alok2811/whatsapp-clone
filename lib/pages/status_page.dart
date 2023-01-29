import 'package:flutter/material.dart';
import 'package:whatsapp/pages/my_story_page.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: (){}, child: const Icon(Icons.edit, color: Colors.white,),),
         const SizedBox(height: 5,),
          FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: (){}, child: const Icon(Icons.camera_alt, color: Colors.white,),),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) => MyStoryView()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/user.png"),
                      ),
                    const SizedBox(width: 10,),
                     Column(
                       children: const[
                         Text('My Status', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                          SizedBox(height: 5,),
                         Text('35 minutes ago', style: TextStyle(fontSize: 14),),
                       ],
                     )

                    ],
                  ),

                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))

                ],
              ),
            ),
          ),

          const Divider(),

         const Padding(
           padding: EdgeInsets.all(8.0),
           child: Text('Viewed updates',style: TextStyle(fontWeight: FontWeight.bold),),
         ),

          Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/alok.png"),
                    ),
                    title: const Text(
                      "Alok Dubey",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      " 45 minutes ago",
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyStoryView())),
                  )
                ],
              )),


          // CircleAvatar(
          //     radius: 50,
          //     backgroundImage: AssetImage("assets/images/user.png"),
          //     child:  Stack(
          //         children:const [
          //           Align(
          //             alignment: Alignment.bottomRight,
          //             child: CircleAvatar(
          //               radius: 16,
          //               child: Icon(CupertinoIcons.camera),
          //             ),
          //           ),
          //         ]
          //     ),
          //   ),


        ],

      ),

    );
  }
}
