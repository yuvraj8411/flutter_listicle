import 'package:flutter/material.dart';
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
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    label: 'Name',
                    hintText: 'Yuvraj Baravkar',
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    label: 'E-mail',
                    hintText: 'yuvrajbaravkar84@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    label: 'Password',
                    hintText: '*********',
                    obscureText: true,
                  ),
                  Row(
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
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
