import 'package:flutter/material.dart';
import 'package:xolera/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final Icon icon;
  final Image img;
  const RoundedButton({
    Key key,
    this.text,
    this.icon,
    this.img,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          img == null
              ? Container()
              : Container(
                  height: 25,
                  width: 23,
                  color: Colors.transparent,
                  child: img,
                ),
          icon == null ? Container() : icon,
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
          textStyle: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w600)),
    );
  }
}
