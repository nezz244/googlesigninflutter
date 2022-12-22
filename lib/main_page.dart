

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'auth_page.dart';
import 'home_page.dart';
import 'login_widget.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState){
          return Center(child: CircularProgressIndicator());

        }
        else if (snapshot.hasError){
          return Center(child: Text('Something went wrong!'));
        }
        else if (snapshot.hasData)
          {
            return HomePage();
          }
        else{
          return AuthPage();
        }

      }
    ),
  );
}

