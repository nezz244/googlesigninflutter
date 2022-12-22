import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googlesigninflutter/login_widget.dart';
import 'package:googlesigninflutter/utils.dart';

import 'home_page.dart';
import 'main_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  var showsnake= Utils();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      scaffoldMessengerKey: showsnake.messengerKey,
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',

      home: MainPage(),
    );
  }


}

