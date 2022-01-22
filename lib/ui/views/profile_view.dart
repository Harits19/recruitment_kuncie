import 'package:flutter/material.dart';
import 'package:kuncie_mobile/base/constans.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    Key? key,
    this.radius = 20,
    this.isLocked = false,
  }) : super(key: key);

  final double radius;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: radius,
      backgroundColor: C.color.rajah,
      child: Container(
        padding: const EdgeInsets.all(2),
        foregroundDecoration: isLocked
            ? const BoxDecoration(
                color: Colors.grey,
                backgroundBlendMode: BlendMode.saturation,
              )
            : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(39),
          child: Image.asset("images/img_radit.jpg"),
        ),
      ),
    );
  }
}
