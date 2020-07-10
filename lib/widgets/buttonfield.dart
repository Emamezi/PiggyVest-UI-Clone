import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Color borderColor;
  const ButtonField({
    this.title,
    this.color,
    this.textColor,
    this.borderColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        width: double.infinity,
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: FlatButton(
          color: color,
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
// Theme.of(context).buttonColor
