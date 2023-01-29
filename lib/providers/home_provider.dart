import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{

  void showPopupMenu(BuildContext context) async {
    await showMenu(
      position: const RelativeRect.fromLTRB(100, 20, 0, 100),
      context: context,
      items:  [
        PopupMenuItem<String>(
            onTap: (){}, value: 'group',
            child: const Text('New group')),

        PopupMenuItem<String>(
            onTap: (){}, value: 'broadcast',
            child: const Text('New broadcast')),

        PopupMenuItem<String>(
            onTap: (){}, value: 'linkDevice',
            child: const Text('Linked Device')),

        PopupMenuItem<String>(
            onTap: (){}, value: 'starredMessage',
            child: const Text('Starred message')),

        PopupMenuItem<String>(
            onTap: (){}, value: 'payment',
            child: const Text('Payment')),

        PopupMenuItem<String>(
            onTap: (){}, value: 'settings',
            child: const Text('Settings')),

      ],
      elevation: 8.0,
    );
  }

}