import 'package:flutter/material.dart';
import 'package:kuncie_mobile/base/constans.dart';
import 'package:kuncie_mobile/base/style.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';
import 'package:kuncie_mobile/ui/views/profile_view.dart';

class MopduleView extends StatelessWidget {
  MopduleView.blue({
    Key? key,
    this.isNew = false,
  })  : image = "img_background_3",
        super(key: key);

  MopduleView.yelllow({
    Key? key,
    this.isNew = false,
  })  : image = "img_background_4",
        super(key: key);

  final String image;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _item,
        if (isNew) Image.asset("images/ic_new_label.png"),
      ],
    );
  }

  final _background = Positioned.fill(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 20,
              color: C.color.tuna.withOpacity(0.2)
              // spreadRadius: -16,
              )
        ],
      ),
    ),
  );

  final _value = Positioned.fill(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Menjelajahi Arti Sebagai Seorang Pemimpin Muda",
            style: S.text.heading3,
          ),
          const Spacer(),
          const ProfileView(),
          const Gap.v(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Putri Tanjung",
                style: S.text.body1,
              ),
              const Icon(Icons.add_circle_outline)
            ],
          )
        ],
      ),
    ),
  );

  Widget get _item {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Stack(
        children: [
          _background,
          Image.asset(
            "images/$image.png",
          ),
          _value,
        ],
      ),
    );
  }
}
