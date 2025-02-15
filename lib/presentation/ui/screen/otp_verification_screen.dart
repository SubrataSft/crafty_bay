import 'package:crafty_bay/presentation/ui/screen/complete_profile_screen.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();

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
                "Enter OTP Code",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "A 4 digit has been sent to email",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              PinCodeTextField(
                length: 5,
                obscureText: false,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedColor: Colors.green,
                    inactiveColor: AppColors.themeColors,
                    inactiveFillColor: Colors.white),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                appContext: context,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(onPressed: _onTapNextButton, child: const Text("Next")),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                  text: "This code is will be expire in",
                  children: [
                    TextSpan(
                      text: "120s",
                      style: TextStyle(
                        color: AppColors.themeColors,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(onPressed:(){}, child: Text("Resend code"))
            ],
          ),
        ),
      ),
    );
  }

  void _onTapNextButton(){
    Get.to(()=>CompleteProfileScreen());
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
