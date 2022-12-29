import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manage/ui/widgets/custom_button.dart';
import 'package:money_manage/utils/text_style.dart';

class Transaction {
  Transaction({required this.id, required this.title, required this.amount, required this.dateTime, this.kurs = 1});

  final int id;
  final String title;
  final double amount;
  final DateTime dateTime;
  final int kurs;

  void now() {
    print('xozir vaqt');
  }
}

//====================
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LOGO
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'M', style: MyTextStyle.boldInter.copyWith(color: Colors.red, fontSize: 38)),
                      TextSpan(text: 'MANAGER', style: MyTextStyle.boldInter.copyWith(fontSize: 38)),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                
                // TITLE
                Text('Create an account', style: MyTextStyle.mediumInter.copyWith(fontSize: 20)),
                const SizedBox(height: 8),
                
                // SUBTITLE
                Text('Get started by creating your account to secure your data & manage on multiple devices anytime! ', style: MyTextStyle.regularInter, textAlign: TextAlign.center,),
                const Expanded(child: SizedBox()),

                // BUTTON
                CustomButton(
                    fillColor: false,
                    onPressed: () {},
                    text: 'Sign up with Google',
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      size: 20,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
