import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:shopping_app/common/color_ext.dart";
import "package:shopping_app/common_widget/section_view.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/profile.png",
                        fit: BoxFit.contain,
                      ),
                      iconSize: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.placeHolder,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SectionView(
                  title: "Exclusive Offer",
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
