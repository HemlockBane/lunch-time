import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
//                    SizedBox(height: 10,),
//                    Button.signInOption(
//                      context: context,
//                      buttonColor: Colors.white,
//                      labelColor: Colors.black,
//                      iconData: Icons.message,
//                      borderRadius: 10,
//                      onPressed: (){}
//                    )
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
