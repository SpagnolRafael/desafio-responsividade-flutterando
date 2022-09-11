import 'package:flutter/material.dart';
import 'package:money_management/components/logo.dart';
import 'package:money_management/components/mm_button.dart';
import 'package:money_management/get_sizes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = GetSize.height(context);
    final width = GetSize.width(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: width < 900 || width < height
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const LogoType(),
                    onTap: () {
                      print('height: $height | width: $width');
                    },
                  ),
                  const SizedBox(height: 20),
                  Text('Get Your Money \n Under Control',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * .06,
                      )),
                  const SizedBox(height: 10),
                  Text('Manage your expenses. \n Seamlessly.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: height * .04,
                      )),
                  const SizedBox(height: 50),
                  const BottomResponsive()
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: const Center(child: LogoType()),
                        onTap: () {
                          print('height: $height | width: $width');
                        },
                      ),
                      const SizedBox(height: 20),
                      Text('Get Your Money \n Under Control',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * .06,
                          )),
                      const SizedBox(height: 10),
                      Text('Manage your expenses. \n Seamlessly.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: height * .04,
                          )),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0, bottom: 100.0),
                    child: VerticalDivider(
                      color: Colors.white,
                      width: 3,
                      thickness: 0.3,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [BottomResponsive()],
                  ),
                  const Spacer(),
                ],
              ),
            ),
    );
  }
}

class BottomResponsive extends StatelessWidget {
  const BottomResponsive({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = GetSize.width(context);
    return Column(
      children: [
        MMButton(
          text: 'Sign Up with Email ID',
          onPressed: () {},
          buttonType: ButtonType.mail,
        ),
        const SizedBox(height: 5),
        MMButton(
          text: 'Sign Up with Google',
          onPressed: () {},
          buttonType: ButtonType.google,
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: width < 20 ? width * .0001 : 12,
              ),
            ),
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width < 20 ? width * .0001 : 12,
                  decoration: TextDecoration.underline),
            ),
          ],
        )
      ],
    );
  }
}
