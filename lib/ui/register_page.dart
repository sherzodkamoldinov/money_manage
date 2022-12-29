import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}


