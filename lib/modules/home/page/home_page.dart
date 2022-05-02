import 'package:doctor/core/constants/constants.dart';
import 'package:doctor/core/utils/app_assets.dart';
import 'package:doctor/core/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TDefaultPadding),
          child: Column(
            children: [
              _buildAppBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SizedBox(
      height: 56,
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Lucy Vell',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: SvgPicture.asset(
                    TAssets.bellFilled,
                    color: Colors.blueAccent,
                  )),
                ),
              ),
              const SizedBox(width: 5),
              const TCircleAvatar(TAssets.women1),
            ],
          ),
        ),
      ]),
    );
  }
}
