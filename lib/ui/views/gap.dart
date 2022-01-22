// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap.v(
    double size, {
    Key? key,
  })  : height = size,
        width = null,
        super(key: key);

  const Gap.h(
    double size, {
    Key? key,
  })  : width = size,
        height = null,
        super(key: key);

  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
