import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sumeet/screen/dashboard.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _OtpPageState();
}

class _OtpPageState extends State<otp> {
  late Timer _dialogTimer;
  String expectedCode = '201022';

  @override
  void initState() {
    super.initState();
    _startDialogTimer();
  }

  @override
  void dispose() {
    _dialogTimer.cancel();
    super.dispose();
  }

  void _startDialogTimer() {
    _dialogTimer = Timer.periodic(Duration(seconds: 15), (timer) {
      _showDialogAfterDelay();
    });
  }

  void _showDialogAfterDelay() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Remember the date??"),
          content: Text("Choose an option:"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showOption1Dialog();
              },
              child: Text("Yess :D"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showOption2Dialog();
              },
              child: Text("No :("),
            ),
          ],
        );
      },
    );
  }

  void _showOption1Dialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Yess :D"),
          content: Text("Then type it, whats taking so long??"),
        );
      },
    );
  }

  void _showOption2Dialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Noo :("),
          content: Text("That's disappointing but a pizza would work :D"),
        );
      },
    );
  }

  void _navigateToHomePageAfterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => dashboard()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Now enter the date when we first went out for a date"),
            ],
          ),
          SizedBox(height: 20),
          OtpTextField(
            numberOfFields: 6,
            borderColor: Color(0xFF512DA8),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              if (verificationCode == expectedCode) {
                _showSuccessSnackBar(context, 'Good job, babyy!!');
                _navigateToHomePageAfterDelay();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('That was an incorrect code!! Try again ;)'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
