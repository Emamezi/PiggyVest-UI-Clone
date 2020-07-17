import 'package:flutter/material.dart';

class QuickSaveOption extends StatefulWidget {
  final String heading;
  final String labelText;

  QuickSaveOption({
    this.heading,
    this.labelText,
  });
  @override
  _QuickSaveOptionState createState() => _QuickSaveOptionState();
}

class _QuickSaveOptionState extends State<QuickSaveOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.heading,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                filled: true,
                labelText: widget.labelText,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
