import 'package:Kangaroo/Constants.dart';
import 'package:Kangaroo/widgets/Buttons.dart';
import 'package:Kangaroo/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            child: Image.asset(
              'assets/Background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, right: 25),
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/Tutorial Button.png')),
                  Container(
                    child: Image.asset('assets/Logo.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: AppTextField(
                        title: 'Email',
                        icon: Icon(
                          Icons.mail_outline,
                          color: kprimarycolor,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: AppTextField(
                        title: 'Password',
                        icon: Icon(
                          Icons.lock_outline,
                          color: kprimarycolor,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: ktextcolor),
                        )),
                  ),
                  Container(
                    child: AppButton(
                        title: 'Log in',
                        colour: kprimarycolor,
                        route: '/Payment'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('assets/Divider.png'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: AppButton(
                        title: 'Sign up with Email',
                        colour: kprimarycolor,
                        route: '/Payment'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: AppButton(
                        title: 'Sign up with Google',
                        colour: kaccentcolor1,
                        route: '/Payment'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Terms of Service and Privacy Policy',
                      style: TextStyle(color: ktextcolor),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
