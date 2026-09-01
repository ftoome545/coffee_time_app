import 'package:flutter/material.dart';

void buildMessageBar(BuildContext context, Widget child) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 3),
      content: child));
}
