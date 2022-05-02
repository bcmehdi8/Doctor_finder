import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TCircleAvatar extends StatelessWidget {
  const TCircleAvatar(
    this.imagePath, {
    Key? key,
    this.fallBackText,
    this.isNetwork = false,
    this.radius,
  }) : super(key: key);

  final String? imagePath;
  final String? fallBackText;
  final bool? isNetwork;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    bool isSvg = imagePath != null ? imagePath!.endsWith('svg') : false;
    return imagePath != null
        ? CircleAvatar(
            radius: radius ?? 18,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(
              imagePath!,
            ),
          )
        : CircleAvatar(
            radius: radius ?? 18,
            backgroundColor: Colors.blueAccent,
            child: Text(
              fallBackText ?? "??",
              style: const TextStyle(color: Colors.white),
            ),
          );
  }
}
