import 'package:flutter/material.dart';
import 'package:money_management/get_sizes.dart';

class LogoType extends StatelessWidget {
  const LogoType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = GetSize.height(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(height * .007),
              child: Container(
                width: height * .1,
                height: height * .1,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700, shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(height * .007),
              child: Container(
                  width: height * .1,
                  height: height * .1,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(100)),
                  )),
            )
          ],
        ),
        Container(
          height: height * .2,
          width: height * .1,
          decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
        )
      ],
    );
  }
}
