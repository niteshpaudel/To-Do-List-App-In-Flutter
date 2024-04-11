import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/home_screen.dart';
import 'package:to_do_list_app/theme/colors.dart';
import 'package:to_do_list_app/widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  void toggleCheckBox(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  bool checker = false;
  bool checkTick() {
    setState(() {
      checker = !checker;
    });
    return checker;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(102, 228, 227, 227),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                highlightColor: const Color.fromARGB(102, 215, 215, 215),
                icon: const Icon(
                  Icons.chevron_left_rounded,
                  size: 27,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Create Account 👋',
                style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Please register on our Streamline, where you\ncan continue using our service.',
                style: TextStyle(
                  color: primaryGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextFieldWidget(
                hintText: 'E-mail',
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFieldWidget(
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Transform.translate(
                offset: const Offset(-11, 0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                          activeColor: Colors.black,
                          splashRadius: 0,
                          value: isChecked,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: const BorderSide(width: 1.2),
                          onChanged: (bool? value) {
                            toggleCheckBox(value);
                          }),
                    ),
                    GestureDetector(
                      onTap: () {
                        toggleCheckBox(checkTick());
                      },
                      child: Text(
                        'I agree to the terms & conditions',
                        style: TextStyle(
                          color: primaryGrey,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 151, 128),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      primaryOrange,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width, 60),
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    '   Or   ',
                    style: TextStyle(fontSize: 16, color: primaryGrey),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.2, color: Colors.black),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/google-icon.png',
                      scale: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Continue With Google',
                      style: TextStyle(fontSize: 16, color: primaryGrey),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?  ',
                    style: TextStyle(fontSize: 14, color: primaryGrey),
                  ),
                  const Text(
                    'Sign in instead',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryOrange,
                      decoration: TextDecoration.underline,
                      decorationColor: primaryOrange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
