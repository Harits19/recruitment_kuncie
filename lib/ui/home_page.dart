import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuncie_mobile/base/constans.dart';
import 'package:kuncie_mobile/base/style.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';
import 'package:kuncie_mobile/ui/views/header_view.dart';
import 'package:kuncie_mobile/ui/views/horizontal_scroll_view.dart';
import 'package:kuncie_mobile/ui/views/list_plan_view.dart';
import 'package:kuncie_mobile/ui/views/module_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: C.color.revolver,
      body: SafeArea(
        child: ListView(
          children: [
            HeaderView.dark(
              point: "9999+",
              streak: "99+",
              lock: "99+",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap.v(8),
                  Text(
                    "Hai Kuncoro!",
                    style: S.text.heading1,
                  ),
                  const Gap.v(16),
                  _input,
                  const Gap.v(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rencana belajar",
                        style: S.text.heading2,
                      ),
                      Text(
                        "Lihat Rencana",
                        style: S.text.body2,
                      ),
                    ],
                  ),
                  const Gap.v(8),
                ],
              ),
            ),
            const ListPlanView(),
            const Gap.v(32),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap.v(24),
                  _textSection(
                    "Lagi trending 📈",
                  ),
                  const Gap.v(8),
                  _listModule(),
                  const Gap.v(24),
                  _textSection(
                    "Unboxing modul barunya, yuk! ",
                  ),
                  const Gap.v(8),
                  _listModule(isNew: true),
                  const Gap.v(44),
                  Gap.v(C.number.heightBottomMenu)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final _input = TextField(
    cursorColor: Colors.white,
    style: GoogleFonts.roboto(
      color: Colors.white,
    ),
    decoration: InputDecoration(
      filled: true,
      fillColor: C.color.blackcurrant,
      prefixIcon: const Icon(
        CupertinoIcons.search,
        color: Colors.white,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      hintStyle: GoogleFonts.roboto(
        color: Colors.white,
      ),
      hintText: "Cari Topik, Konten, atau Mentor",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide.none,
      ),
    ),
  );

  Widget _listModule({
    bool isNew = false,
  }) {
    return HorizontalScrollView(
      children: [
        ...List.generate(5, (index) {
          return index % 2 != 0
              ? MopduleView.yelllow(
                  isNew: isNew,
                )
              : MopduleView.blue(
                  isNew: isNew,
                );
        })
      ],
    );
  }

  _textSection(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: S.text.heading2.copyWith(
          color: C.color.cinder,
        ),
      ),
    );
  }
}
