import 'package:crafty_bay/presentation/ui/screen/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {

  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              const AppLogoWidget(),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Welcome back ",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "Please enter your email address ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _emailTEController,
                decoration: InputDecoration(hintText: "Email"),
              ),const SizedBox(
                height: 16,
              ),
              ElevatedButton(
        
        
                  onPressed: _onTapNextButton,
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
  void _onTapNextButton(){
    Get.to(()=> const OtpVerificationScreen());
  }


  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
