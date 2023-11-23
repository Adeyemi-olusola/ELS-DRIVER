import 'package:ets_driver/utils/themes.dart';
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

class WhiteButton extends StatelessWidget {
  const WhiteButton({Key? key, required this.text, this.onPressed, this.height})
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
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: defaultTheme.textTheme.bodySmall!
                    .copyWith(color: Colors.black))),
      ),
    );
  }
}

class GreyButton extends StatelessWidget {
  const GreyButton({Key? key, required this.text, this.onPressed, this.height})
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
            color: Color(0xff35383F), borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: defaultTheme.textTheme.bodySmall!
                    .copyWith(color: Colors.white))),
      ),
    );
  }
}




class GreenButton extends StatelessWidget {
  const GreenButton({Key? key, required this.text, this.onPressed, this.height})
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
            color: Colors.green, borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: defaultTheme.textTheme.bodySmall!
                    .copyWith(color: Colors.black , fontSize: 10))),
      ),
    );
  }
}
