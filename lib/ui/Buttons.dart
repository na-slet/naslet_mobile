import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import '../common_setup/Assets.dart';
import '../services/ColorService.dart';

class PrimaryButton extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  final double height;
  final String title;
  final Color color;
  final TextStyle textStyle;
  final VoidCallback onTap;

  PrimaryButton({
    Key? key,
    this.height = 45,
    required this.title,
    required this.color,
    required this.onTap,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(5),
          child: Center(
            child: Text(title, style: textStyle),
          ),
        ),
      ),
    );
  }
}

class PrimaryTextButton extends StatelessWidget {
  final double height;
  final String text;
  final TextStyle textStyle;
  final VoidCallback onTap;

  const PrimaryTextButton({
    Key? key,
    this.height = 50,
    required this.onTap,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CupertinoButton(
        onPressed: onTap,
        borderRadius: BorderRadius.circular(5),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final colorService = Injector().get<ColorService>();

  final double height;
  final double width;
  final String imgPath;
  final VoidCallback onTap;

  CircleButton({
    Key? key,
    this.height = 40,
    this.width = 40,
    required this.imgPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Image.asset(imgPath),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}