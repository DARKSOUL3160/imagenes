import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  static String tag = 'login-page';
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 58.0,
        child: Image.asset('assets/images/Logo.png'),
        
      ),
    );

   

    final usuario = new ListTile(
        leading: const Icon(Icons.person_outline),
        title: new TextFormField(      
          autofocus: false,                    
          obscureText: false,      
          decoration: InputDecoration(                  
            hintText: 'Usuario',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),
        )
      );



     final password = new ListTile(
        leading: const Icon(Icons.lock_outline),
        title: new TextFormField(      
          autofocus: false,
          //initialValue: 'some password ',
          obscureText: true,      
          decoration: InputDecoration(      
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          ),
        )
      );

    

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 26.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.redAccent,
        child: Text('Entrar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 54.0, right: 54.0),
          children: <Widget>[
            logo,
            SizedBox(height: 68.0),          

            usuario,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            
          ],
        ),
      ),
    );
  }
}