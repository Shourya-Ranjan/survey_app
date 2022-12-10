import 'package:flutter/material.dart';

class BigButtonWithIcon extends StatelessWidget {
  final Function onPressed;
  final Widget buttonIcon;
  final Widget buttonLable;
  const BigButtonWithIcon({
    Key? key,
    required this.onPressed,
    required this.buttonIcon,
    required this.buttonLable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => onPressed(),
      icon: buttonIcon,
      label: buttonLable,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4e8eff),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        minimumSize: const Size(double.infinity, 50),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  final Function onPressed;
  final Widget buttonChild;
  const BigButton({
    Key? key,
    required this.onPressed,
    required this.buttonChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        child: buttonChild,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    );
  }
}
