import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:shopping_app/common/color_ext.dart";
import "package:shopping_app/common_widget/round_button.dart";
import "package:shopping_app/login/signin_view.dart";

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/biscuits.png",
              width: media.width,
              fit: BoxFit.cover,
            ),
            // Image.asset("assets/img/sapp_logo.png", width: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome\nto our store",
                  style: TextStyle(
                      color: AppColor.primaryText,
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get your snacks right at your floor.\nANYTIME.",
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInView()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
