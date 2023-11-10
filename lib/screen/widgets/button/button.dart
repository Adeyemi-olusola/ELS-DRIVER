import 'package:ets_rider/utils/themes.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.text, this.onPressed, this.height})
      : super(key: key);
  final String text;

  final int? height;

  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 59,
        decoration: BoxDecoration(
            color: defaultTheme.primaryColor,
            borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: defaultTheme.textTheme.bodySmall!
                    .copyWith(color: Colors.black))),
      ),
    );
  }
}
