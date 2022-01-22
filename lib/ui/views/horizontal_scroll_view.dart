import 'package:flutter/material.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';

class HorizontalScrollView extends StatelessWidget {
  const HorizontalScrollView({
    Key? key,
    this.children = const [],
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Gap.h(4),
          ...children.map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: e,
            ),
          ),
          const Gap.h(4),
        ],
      ),
    );
  }
}
