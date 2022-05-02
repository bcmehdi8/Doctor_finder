import 'package:doctor/core/utils/app_assets.dart';
import 'package:doctor/core/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularDoctorsSection extends StatelessWidget {
  const PopularDoctorsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Doctors',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: ((context, index) => _buildDoctorBox()),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.88,
          ),
        )
      ],
    );
  }

  Widget _buildDoctorBox() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          children: [
            const TCircleAvatar(
              TAssets.women1,
              radius: 28,
            ),
            const SizedBox(height: 15),
            const Text('Dr. Selena Stefanie'),
            const SizedBox(height: 10),
            const Text(
              'Therapist',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amberAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      TAssets.starFilled,
                      color: Colors.amberAccent,
                      height: 18,
                    ),
                    const SizedBox(width: 3),
                    const Text(
                      '4.9',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
