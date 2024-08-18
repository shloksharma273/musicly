import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicly/common/helpers/is_dark_mode.dart';
import 'package:musicly/common/widgets/appbar/app_bar.dart';
import 'package:musicly/common/widgets/button/basic_app_button.dart';
import 'package:musicly/core/config/assets/app_images.dart';
import 'package:musicly/core/config/assets/app_vectors.dart';
import 'package:musicly/core/config/theme/app_colors.dart';
import 'package:musicly/presentation/authentication/pages/signin.dart';
import 'package:musicly/presentation/authentication/pages/signup.dart';

class SignupOrSignPage extends StatelessWidget {
  const SignupOrSignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BasicAppBar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(AppImages.authBG),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(
                  height: 55,
                ),
                const Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  "Music me laaye masti, masti me laaye music",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignupPage(),
                            ),
                          );
                        },
                        title: 'Register',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SigninPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
