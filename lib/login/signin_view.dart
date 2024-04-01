import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:shopping_app/common/color_ext.dart";
import "package:shopping_app/common_widget/round_button.dart";
import "package:shopping_app/home/home_view.dart";

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                "assets/img/hippoo_Chips.png",
                width: media.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Get your midnight snacks with SMart.",
                style: TextStyle(
                    color: AppColor.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Tasty snacks right at your doorstep.",
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: RoundIconButton(
                title: "Continue with Google",
                icon: "assets/img/google_Logo-P.png",
                bgcolor: AppColor.placeHolder,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
