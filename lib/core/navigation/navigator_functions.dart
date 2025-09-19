import 'package:flutter/cupertino.dart';

void push(BuildContext context, Widget destination) {
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => destination),
  );
}

void pushReplacement(BuildContext context, Widget destination) {
  Navigator.pushReplacement(
    context,
    CupertinoPageRoute(builder: (context) => destination),
  );
}
