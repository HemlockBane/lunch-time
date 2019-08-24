import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_images.dart';
import '../widgets/screen_data.dart';

class LoginScreen extends StatefulWidget {

  static var routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenData().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: ScreenData.blockSizeHorizontal * 4.166),
          child: Column(
            children: <Widget>[
              SizedBox(height: ScreenData.screenHeight * 0.15625,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(AppImages.clock, width: ScreenData.screenWidth * 0.5556, height: ScreenData.screenHeight * 0.3125),
                ],
              ),
              Text('Lunch Time'),
              Text('Ready for munchies?')
            ],
          ),
        )
      ),
    );
  }
}
