import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/input_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/images/whatsapp_logo.png', height: 100, width: 100,),

              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In to Contiue!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              
              const SizedBox(height: 20,),

              InputWidget(controller: emailController, labelText: 'Email', icon: Icons.email),
              const SizedBox(height: 20,),
              InputWidget(controller: passController, labelText: 'Password', icon: Icons.lock, isObscure: true,),
              const SizedBox(height: 20,),

              TextButton(onPressed: (){}, child: const Text('Forget Password?')),

              ElevatedButton(onPressed: (){}, child: const Text('Login')),



            ],
          ),
        ),
      ),
    );
  }
}
