import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lunch_time_app/src/widgets/theme.dart';
import '../constants/app_images.dart';
import '../widgets/screen_data.dart';
import '../widgets/wave_painter.dart';
import '../widgets/button.dart';

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
          //margin: EdgeInsets.symmetric(horizontal: ScreenData.blockSizeHorizontal * 4.166),
          height: ScreenData.screenHeight,
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
              Text('Up for munchies?'),
              //
              Container(
                height: ScreenData.screenHeight * 0.484,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: ScreenData.screenWidth,
                      child: Image.asset(AppImages.wavyBackground, fit: BoxFit.cover,),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 120,),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: Button.signInOption(
                              context: context,
                              buttonColor: Colors.white,
                              label: 'Log in',
                              labelColor: AppTheme.peachButton,
                              iconData: Icons.message,
                              borderRadius: 30,
                              onPressed: (){}
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          child: Button.signInOption(
                              context: context,
                              buttonColor: AppTheme.peachButton,
                              label: 'Sign up',
                              labelColor: Colors.white,
                              iconData: Icons.message,
                              borderRadius: 30,
                              onPressed: (){}
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
