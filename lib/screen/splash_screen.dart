import 'package:flutter/material.dart';
import 'package:listicle/component/custom_button.dart';
import 'package:listicle/component/custom_text_button.dart';
import 'package:listicle/screen/sign_up_screen.dart';
import 'package:listicle/utilities/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/splash_image.png',
              ),
            ),
            const Text(
              "You'll Find",
              style: AppTextStyles.splashBlackTitle,
            ),
            Text(
              "All You need ",
              style: AppTextStyles.splashYellowTitle,
            ),
            const Text(
              "Here! ",
              style: AppTextStyles.splashBlackTitle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            CustomTextButton(
              text: 'Sign In',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
