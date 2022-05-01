import 'package:doctor/core/utils/app_assets.dart';
import 'package:doctor/core/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TCircleAvatar(TAssets.women1)
        ),
      ),
    );
  }
}
