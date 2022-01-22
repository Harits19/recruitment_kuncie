import 'package:flutter/material.dart';
import 'package:kuncie_mobile/base/constans.dart';
import 'package:kuncie_mobile/ui/module_page.dart';
import 'package:kuncie_mobile/base/style.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';
import 'package:kuncie_mobile/ui/views/profile_view.dart';
import 'package:pie_chart/pie_chart.dart';

class PlanView extends StatelessWidget {
  PlanView.orange({
    Key? key,
    this.isLocked = false,
  })  : backgroundColor = C.color.burntSienna,
        image = "img_background_2.png",
        super(key: key);

  PlanView.blue({
    Key? key,
    this.isLocked = false,
  })  : backgroundColor = C.color.jellyBean,
        image = "img_background.png",
        super(key: key);

  final Color backgroundColor;
  final String image;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    const title =
        "Menulis Kreatif dan Terstruktur agar Produk Laris di Pasaran";

    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ModulePage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          width: 224,
          color: isLocked ? C.color.concrete : backgroundColor,
          child: Stack(
            children: [
              if (!isLocked) _background,
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: S.text.heading3.copyWith(
                          color: isLocked ? C.color.saltBox : null,
                        ),
                      ),
                    ),
                    const Gap.v(8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isLocked
                            ? C.color.mercury
                            : C.color.revolver.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Video  ●  2:30 min ",
                        style: S.text.heading4.copyWith(
                          color: isLocked ? C.color.doveGray : null,
                        ),
                      ),
                    ),
                    const Gap.v(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileView(
                          isLocked: isLocked,
                        ),
                        if (isLocked)
                          Image.asset("images/ic_lock.png")
                        else
                          _playButton,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _background {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.1,
        child: Image.asset(
          "images/$image",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  final _playButton = CircleAvatar(
    backgroundColor: C.color.revolver,
    child: Stack(
      alignment: Alignment.center,
      children: [
        PieChart(
          chartLegendSpacing: 0,
          chartType: ChartType.ring,
          legendOptions: const LegendOptions(
            showLegends: false,
            showLegendsInRow: false,
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValues: false,
          ),
          colorList: [
            C.color.saltBox,
            Colors.white,
          ],
          chartRadius: 16,
          dataMap: const {
            "active": 75,
            "inactive": 25,
          },
        ),
        CircleAvatar(
          backgroundColor: C.color.revolver,
          maxRadius: 16,
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
