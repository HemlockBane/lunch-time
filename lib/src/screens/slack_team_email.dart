import 'package:flutter/material.dart';

class SlackTeamEmailScreen extends StatefulWidget {
  static var routeName = 'slack-integration-team-email';

  @override
  _SlackTeamEmailScreenState createState() => _SlackTeamEmailScreenState();
}

class _SlackTeamEmailScreenState extends State<SlackTeamEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.translate), Text(' Slack')
              ],
            )
          ],
        ),
      ),
    );
  }
}
