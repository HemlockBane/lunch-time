import 'package:flutter/material.dart';
import 'package:lunch_time_app/src/widgets/screen_data.dart';

class Button {
  static Widget signInOption(
      {BuildContext context,
      double borderRadius,
      Color buttonColor,
      String label = 'Sign In',
      Color labelColor,
      IconData iconData,
      Function onPressed}) {
    ScreenData().init(context);
    return FlatButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Container(
          margin: EdgeInsets.only(right: ScreenData.blockSizeHorizontal * 5.56),
          padding: EdgeInsets.symmetric(
              vertical: ScreenData.blockSizeHorizontal * 4.167),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Icon(
                  iconData,
                  color: labelColor,
                  size: 30,
                ),
              ),
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.body1.copyWith(
                      color: labelColor,
                      fontSize: 18,
                      letterSpacing: 0.2,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        onPressed: onPressed);
  }
}
