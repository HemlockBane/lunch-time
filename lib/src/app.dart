import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/slack_team_email.dart';
import 'screens/slack_team_password.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        LoginScreen.routeName: (BuildContext context) => LoginScreen(),
        SlackTeamEmailScreen.routeName: (BuildContext context) => SlackTeamEmailScreen()

      },
    );
  }
}
