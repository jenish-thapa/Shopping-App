import "package:flutter/material.dart";
import "package:shopping_app/common/color_ext.dart";

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        height: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minWidth: double.maxFinite,
        elevation: 0.1,
        color: AppColor.placeHolder,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  final String title;
  final String icon;
  final Color bgcolor;
  final VoidCallback onPressed;
  const RoundIconButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.bgcolor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        height: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minWidth: double.maxFinite,
        elevation: 0.1,
        color: bgcolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
