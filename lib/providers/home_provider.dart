import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{

  void showPopupMenu(BuildContext context) async {
    await showMenu(
      position: const RelativeRect.fromLTRB(100, 20, 0, 100),
      context: context,
      items:  [
        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('New group'), value: 'group'),

        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('New broadcast'), value: 'broadcast'),

        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('Linked Device'), value: 'linkDevice'),

        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('Starred message'), value: 'starredMessage'),

        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('Payment'), value: 'payment'),

        PopupMenuItem<String>(
            onTap: (){},
            child: const Text('Settings'), value: 'settings'),

      ],
      elevation: 8.0,
    );
  }

}