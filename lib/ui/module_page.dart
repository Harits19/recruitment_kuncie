import 'package:flutter/material.dart';
import 'package:kuncie_mobile/base/constans.dart';
import 'package:kuncie_mobile/base/style.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';
import 'package:kuncie_mobile/ui/views/header_view.dart';
import 'package:kuncie_mobile/ui/views/list_plan_view.dart';
import 'package:kuncie_mobile/ui/views/profile_view.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final listSwitch = ["Konten", "Materi"];

  int selectedSwitch = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HeaderView.light(
              point: "6",
              streak: "01",
              lock: "03",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap.v(16),
                  Text(
                    "Pentingnya Creative Thinking di Era Digital",
                    style: S.text.heading1.copyWith(
                      color: C.color.cinder,
                    ),
                  ),
                  const Gap.v(16),
                  const ProfileView(
                    radius: 24,
                  ),
                  const Gap.v(32),
                  Container(
                    decoration: BoxDecoration(
                      color: C.color.athensGray,
                      borderRadius: _radiusSwitch,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...List.generate(
                          listSwitch.length,
                          (index) {
                            return _itemSwitch(index);
                          },
                        )
                      ],
                    ),
                  ),
                  const Gap.v(16),
                  _titleSection(
                    "Mengenal Creative Thinking",
                  ),
                  const Gap.v(2),
                  Text(
                    "0 dari 5 video selesai ditonton",
                    style: S.text.subtitle2.copyWith(
                      color: C.color.mineShaft,
                    ),
                  ),
                  const Gap.v(8),
                ],
              ),
            ),
            const ListPlanView(),
            const Gap.v(24),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleSection("Penerapan Creative Thinking"),
                  const Gap.v(2),
                  Row(
                    children: [
                      Image.asset("images/ic_unlock.png"),
                      const Gap.h(4),
                      Text(
                        "Buka dengan selesaikan semua video diatas",
                        style: S.text.subtitle2.copyWith(
                          color: C.color.mineShaft,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Gap.v(8),
            const ListPlanView(
              isLocked: true,
            ),
          ],
        ),
      ),
    );
  }

  BorderRadius get _radiusSwitch => BorderRadius.circular(30);

  Widget _titleSection(String text) {
    return Text(
      text,
      style: S.text.heading3.copyWith(
        color: C.color.cinder,
      ),
    );
  }

  Widget _itemSwitch(int index) {
    final isActive = selectedSwitch == index;
    return GestureDetector(
      onTap: () {
        selectedSwitch = index;
        setState(() {});
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: isActive ? C.color.revolver : null,
          borderRadius: _radiusSwitch,
        ),
        child: Text(
          "Konten",
          style: S.text.subtitle2.copyWith(
            color: !isActive ? C.color.revolver : null,
          ),
        ),
      ),
    );
  }
}
