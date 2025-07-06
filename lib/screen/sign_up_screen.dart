import 'package:flutter/material.dart';
import 'package:listicle/component/custom_button.dart';
import 'package:listicle/utilities/constant.dart';
import 'package:listicle/widget/checkbox.dart';
import 'package:listicle/widget/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  icon: Image.asset(
                    'assets/auth_back.png',
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomTextField(
                    label: 'Name',
                    hintText: 'Yuvraj Baravkar',
                  ),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    label: 'E-mail',
                    hintText: 'yuvrajbaravkar84@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  const CustomTextField(
                    label: 'Password',
                    hintText: '*********',
                    obscureText: true,
                  ),
                  const Row(
                    children: [
                      CustomCheckbox(
                        label: "",
                      ),
                      Text(
                        'I agree with',
                        style: AppTextStyles.checkBoxLabelText,
                      ),
                      Text(
                        ' Terms',
                        style: AppTextStyles.checkBoxLabelTextBold,
                      ),
                      Text(
                        ' &',
                        style: AppTextStyles.checkBoxLabelText,
                      ),
                      Text(
                        ' Privacy',
                        style: AppTextStyles.checkBoxLabelTextBold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
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
                        "Or sign up with",
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
                        'Already have an account?',
                        style: AppTextStyles.checkBoxLabelText,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign In',
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
