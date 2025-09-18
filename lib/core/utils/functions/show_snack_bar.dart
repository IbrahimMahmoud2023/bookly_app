import 'package:flutter/material.dart';

void showSnackBar(context, String message, ) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(10),
      content: Center(child: Text(message)),
    ),
  );
}

