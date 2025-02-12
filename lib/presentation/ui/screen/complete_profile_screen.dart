import 'package:crafty_bay/presentation/ui/screen/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const AppLogoWidget(),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Complete profile",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "Get started with us by providing your any problem",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: "First Name"),
              ),const SizedBox(
                height: 16,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: "Last Name"),
              ),const SizedBox(
                height: 16,
              ),TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Mobile"),
              ),const SizedBox(
                height: 16,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: "City"),
              ),
              const SizedBox(
                height: 16,
              ),TextFormField(
                maxLines: 4,
                decoration: InputDecoration(hintText: "Message "),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: _onTapCompleteButton,
                  child: const Text("Complete"))
            ],
          ),
        ),
      ),
    );
  }
  void _onTapCompleteButton(){
    Get.to(()=> const OtpVerificationScreen());
  }


  @override
  void dispose() {

    super.dispose();
  }
}
