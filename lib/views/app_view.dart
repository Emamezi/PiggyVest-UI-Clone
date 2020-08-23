import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
