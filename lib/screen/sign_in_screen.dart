import 'package:flutter/material.dart';
import 'package:listicle/component/custom_button.dart';
import 'package:listicle/utilities/constant.dart';
import 'package:listicle/widget/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Image(
                    image: AssetImage('assets/auth_back.png'),
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(width: 8),
                const Text('Sign Up', style: AppTextStyles.appBarTitle),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomTextField(
                    label: 'E-mail',
                    hintText: 'yuvrajbaravkar84@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    label: 'Password',
                    hintText: '*********',
                    obscureText: true,
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    text: 'Sign In',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "Or sign in with",
                        style: AppTextStyles.checkBoxLabelTextBold,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    backgroundColor: AppColors.darkGrey,
                    showButtonTitle: false,
                    text: '',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: AppTextStyles.checkBoxLabelText,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign Up',
                          style: AppTextStyles.checkBoxLabelTextBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
