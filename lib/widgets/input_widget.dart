import 'package:flutter/material.dart';

 class InputWidget extends StatelessWidget {
   final TextEditingController controller;
   final String labelText ;
   final IconData icon;
   final bool isObscure;
   const InputWidget({Key? key,
     required this.controller,
     required this.labelText,
     required this.icon,
     this.isObscure = false,
   }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return TextField(
       controller: controller,
       obscureText: isObscure,
       decoration: InputDecoration(
         icon: Icon(icon),
         label: Text(labelText),
       ),
     );
   }
 }
