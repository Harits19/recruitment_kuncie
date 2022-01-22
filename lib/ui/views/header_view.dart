import 'package:flutter/material.dart';
import 'package:kuncie_mobile/base/constans.dart';
import 'package:kuncie_mobile/base/style.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';

class HeaderView extends StatelessWidget {
  HeaderView.light({
    Key? key,
    this.point,
    this.streak,
    this.lock,
  })  : textColor = Colors.black,
        backgroundColor = C.color.concrete,
        pColor = Colors.black,
        super(key: key);

  HeaderView.dark({
    Key? key,
    this.point,
    this.streak,
    this.lock,
  })  : textColor = null,
        backgroundColor = C.color.blackcurrant,
        pColor = C.color.rajah,
        super(key: key);

  final Color? textColor, backgroundColor, pColor;

  final String? point, streak, lock;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.canPop(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          if (canPop) ...[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            const Gap.h(16),
          ],
          _iconTextView(
            image: "ic_flash.png",
            value: point ?? "",
            withP: true,
          ),
          const Gap.h(8),
          _iconTextView(
            image: "ic_fire.png",
            value: streak ?? "",
          ),
          const Gap.h(8),
          _iconTextView(
            image: "ic_key.png",
            value: lock ?? "",
          ),
          const Spacer(),
          Icon(
            Icons.settings,
            color: C.color.graySuit,
          )
        ],
      ),
    );
  }

  Widget _iconTextView({
    required String image,
    required String value,
    bool withP = false,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset("images/$image"),
            const Gap.h(8),
            Text(
              value,
              style: S.text.caption.copyWith(
                color: textColor,
              ),
            ),
            if (withP)
              Text(
                "P",
                style: S.text.caption.copyWith(
                  color: pColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
