import 'package:flutter/material.dart';

import '../core/extensions.dart';
import '../core/gaps.dart';
import '../shared//constants.dart';
import 'home/root_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Login',
          style: context.titleLarge?.copyWith(
            color: context.onPrimary,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login To New Experience....',
                style: context.titleMedium,
              ),
              Container(
                width: context.width,
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.black,
                  border: Border.all(
                    color: context.primary,
                    width: 0.5,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/logo_with_text.png",
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      gap16h,
                      TextFormField(
                        style: context.bodyLarge,
                        decoration: InputDecoration(
                          // hintText: 'Email address',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.2,
                              color: ColorConstant.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          label: Text(
                            'Email address',
                            style: context.bodyMedium,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isNullOrEmpty()) {
                            return "Please enter your email address";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextFormField(
                        style: context.bodyLarge,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.2,
                              color: ColorConstant.borderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          label: Text(
                            'Password',
                            style: context.bodyMedium,
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        validator: (value) {
                          if (value.isNullOrEmpty()) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                      ),
                      gap24h,
                      SizedBox(
                        height: 50,
                        width: context.width,
                        child: ElevatedButton(
                          onPressed: () {
                            /* final form = _formKey.currentState!;
                            if (form.validate()) {
                              form.save();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RootScreen(),
                                ),
                              );
                            } */
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RootScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: context.bodyLarge?.copyWith(
                              color: context.onPrimary,
                            ),
                          ),
                        ),
                      ),
                      gap24h,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
