import 'package:flutter/material.dart';
import 'package:flutter_topics_synic_with_ppt/Navigation/useing_named_route.dart';

class PageNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Navigation',
      home: IndexPage(),
      routes: {
        '/sign_up': (context) => SignOutPage(),
        '/log_in': (context) => LogInPage(),
      },
    );
  }
}