import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController userCntrl = TextEditingController();
  final TextEditingController passCntrl = TextEditingController();

  final Correctusername = "Jefin";
  final Correctpassword = "0987";

  void login(){
    String username = userCntrl.text.trim();
    String password = passCntrl.text.trim();

    if (Correctusername == username && Correctpassword == password){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    }
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope( 
      onWillPop: () async => false,
      child: Scaffold(
        
        appBar: AppBar(title: Text('Login'),
        centerTitle: true,
        
        ),
        
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userCntrl,
                decoration: InputDecoration(labelText: 'Username',
                icon: Icon(Icons.email_rounded),
                
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passCntrl,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: login,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  
