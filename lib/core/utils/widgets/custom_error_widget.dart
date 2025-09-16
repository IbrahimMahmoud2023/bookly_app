import 'package:bookely_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
 final String errorMessage;

  @override
  Widget build(BuildContext context) {
    print(errorMessage);
    return Text(errorMessage,style: Styles.textStyle18,);
  }
}
