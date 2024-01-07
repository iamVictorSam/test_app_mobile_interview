import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  final Color borderColor = const Color(0xffE5EBF3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  labelText: 'Phone',
                  labelStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              const Gap(30),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.grey),
                  suffixText: 'Forgot Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              const Gap(50),
              defaultBtn(press: () {}),
              const Gap(50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Gap(8),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 199, 158, 37),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Divider(),
              ),
              const Gap(20),
              const Text('Or sign in with',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey)),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton(
                    icon: Icons.facebook,
                    press: () {},
                  ),
                  const Gap(16),
                  socialButton(
                    icon: Icons.g_mobiledata,
                    press: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }

  Widget socialButton(
          {required IconData icon, required GestureTapCallback press}) =>
      GestureDetector(
        onTap: press,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(child: Icon(icon)),
        ),
      );

  Widget defaultBtn({required GestureTapCallback press}) => GestureDetector(
        onTap: press,
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  offset: const Offset(-1, 4),
                  color:
                      const Color.fromARGB(157, 203, 201, 201).withOpacity(0.1),
                  spreadRadius: 10,
                ),
              ]),
          child: const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
}
