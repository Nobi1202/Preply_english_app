import 'package:flutter/material.dart';
import 'package:preply_english/components/content_model.dart';
import 'package:preply_english/components/text_style.dart';
import 'package:preply_english/screens/home_screen.dart';
import 'package:preply_english/screens/sign_in_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 70),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(contents[i].image),
                        height: 300,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: kTextStylePoppinsBlack20,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: kTextStylePoppinsGrey16,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 50,
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
            width: double.infinity,
            child: TextButton(
              child: const Text(
                "Get started",
                style: kTextStylePoppinsWhite16,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                  style: kTextStylePoppinsGrey16,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SignInScreen.routeName);
                  },
                  child: const Text(
                    "Sign in",
                    style: kTextStylePoppinsLightBlue16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
