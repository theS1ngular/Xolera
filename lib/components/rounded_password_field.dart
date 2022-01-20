import 'package:flutter/material.dart';
import 'package:xolera/components/text_field_container.dart';
import 'package:xolera/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  RoundedPasswordField({
    final Key key,
  }) : super(key: key);
  @override
  RoundedPasswordFieldState createState() => RoundedPasswordFieldState();
}

class RoundedPasswordFieldState extends State<RoundedPasswordField> {
  final ValueChanged<String> onChanged;
  RoundedPasswordFieldState({
    final this.onChanged,
  });
  bool obsecure = true;
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obsecure,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                obsecure = !obsecure;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
