import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TCircleAvatar extends StatelessWidget {
  const TCircleAvatar(
    this.imagePath, {
    Key? key,
    this.fallBackText,
    this.isNetwork = false,
  }) : super(key: key);

  final String? imagePath;
  final String? fallBackText;
  final bool? isNetwork;

  @override
  Widget build(BuildContext context) {
    bool isSvg = imagePath != null ? imagePath!.endsWith('svg') : false;
    return imagePath != null
        ? CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(
              imagePath!,
            ),
          )
        : CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text(
              fallBackText ?? "??",
              style: const TextStyle(color: Colors.white),
            ),
          );
  }
}
