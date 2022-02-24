import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {

  @override
  void initState() {
    // TODO: implement initState
    getPermissionUser();
    super.initState();
  }

  Future<Iterable<CallLogEntry>>  getLogs() async{
        return await CallLog.get();
     }

  void getPermissionUser() async {
    if (await Permission.phone.request().isGranted) {
      print('Permission Granted');
    } else {
      await Permission.phone.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getLogs(),
          builder: (BuildContext context, AsyncSnapshot<Iterable<CallLogEntry>> snapshot) {
            if(snapshot.hasData){
              List callList = [];
              snapshot.data?.forEach((element){
               callList.add({"name": element.name, "number": element.number});
              });
              return ListView.builder(
                itemCount: callList.length,
                  itemBuilder: (context, index) {
                  return index == 0? Text('${callList.length}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      callList[index-1]['name'] != null ?
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(callList[index-1]['name']),
                          const SizedBox(height: 5,),
                          Text(callList[index-1]['number']),
                        ],
                      ):Text(callList[index-1]['number']),

                      const Divider(),
                    ],
                  );
              });
            }
          return const Center(child: CircularProgressIndicator(),);
        },

        ),
      ),
    );
  }
}
