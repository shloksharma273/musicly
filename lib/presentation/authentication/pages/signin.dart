import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicly/common/widgets/appbar/app_bar.dart';
import 'package:musicly/common/widgets/button/basic_app_button.dart';
import 'package:musicly/core/config/assets/app_vectors.dart';
import 'package:musicly/presentation/authentication/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo,
          height: 40,
          width: 40,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 50
        ),
        child: Column(
          children: [
            _registeredText(),
            const SizedBox(height: 50,),
            _fullNameField(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            BasicAppButton(onPressed: () {}, title: "Create Account"),
            const SizedBox(height: 120,),
            _signinText(context)
          ],
        ),
      ),
    );
  }

  Widget _registeredText(){
    return const Text(
      'Sign In',
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
            hintText: 'Enter username or Email'
        ).applyDefaults(Theme.of(context).inputDecorationTheme,)
    );
  }


  Widget _passwordField(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
            hintText: 'Password'
        ).applyDefaults(Theme.of(context).inputDecorationTheme,)
    );
  }

  Widget _signinText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Not a Member?',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
            TextButton(onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                  const SignupPage(),
                ),
              );
            }, child: const Text("Register Now"))
          ]

      ),
    );
  }

}
