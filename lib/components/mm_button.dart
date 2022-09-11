import 'package:flutter/material.dart';
import 'package:money_management/get_sizes.dart';

//CREATE MY OWN BUTTON WITHOUT USE ELEVATED BUTTON

enum ButtonType { google, mail, undefinedType }

class MMButton extends StatelessWidget {
  const MMButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.buttonType})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor;
    Color? textColor;
    double width = GetSize.width(context);

    switch (buttonType) {
      case ButtonType.mail:
        textColor = Colors.white;
        backgroundColor = Colors.blue;
        break;

      case ButtonType.google:
        textColor = Colors.black;
        backgroundColor = Colors.white;

        break;
      case ButtonType.undefinedType:
        textColor = Colors.grey;
        backgroundColor = Colors.blue;
        break;
    }

    return GestureDetector(
      onTap: onPressed,
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: width < 500
                ? width * .9
                : width < 50
                    ? width * .001
                    : 450,
            height: 40,
            decoration: BoxDecoration(
                color: backgroundColor, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonType == ButtonType.google
                    ? Center(child: Image.asset('assets/google-logo.png'))
                    : Container(),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(text,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: textColor)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
