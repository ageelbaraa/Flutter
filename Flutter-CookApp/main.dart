import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Firebase/Auth/Example1/pages/root_page.dart';
import 'Firebase/Auth/Example1/services/authentication.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootPage(auth: new Auth()));
  }
}
