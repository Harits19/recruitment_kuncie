import 'package:flutter/material.dart';
import 'package:kuncie_mobile/ui/views/horizontal_scroll_view.dart';
import 'package:kuncie_mobile/ui/views/plan_view.dart';

class ListPlanView extends StatelessWidget {
  const ListPlanView({
    Key? key,
    this.isLocked = false,
  }) : super(key: key);
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: HorizontalScrollView(
        children: [
          ...List.generate(
            8,
            (index) {
              return index % 2 != 0
                  ? PlanView.orange(
                      isLocked: isLocked,
                    )
                  : PlanView.blue(
                      isLocked: isLocked,
                    );
            },
          ),
        ],
      ),
    );
  }
}
