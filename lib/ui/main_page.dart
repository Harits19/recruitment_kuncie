import 'package:flutter/material.dart';
import 'package:kuncie_mobile/ui/home_page.dart';
import 'package:kuncie_mobile/ui/views/gap.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _bottomMenu[selectedMenu].body,
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
            )
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ...List.generate(
                _bottomMenu.length,
                (index) {
                  final isActive = index == selectedMenu;
                  final menu = _bottomMenu[index];
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        selectedMenu = index;
                        setState(() {});
                      },
                      child: Image.asset(
                        menu.image,
                        height: 62,
                        color: isActive ? Colors.black : Colors.grey[300],
                      ),
                    ),
                  );
                },
              ),
              const Gap.h(24),
              const Gap.h(79),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "images/ic_main.png",
              height: 81,
            ),
          ),
        )
      ],
    );
  }

  List<_BottomMenuModel> get _bottomMenu {
    return [
      _BottomMenuModel(
        image: "images/ic_home.png",
        body: HomePage(),
      ),
      _BottomMenuModel(
        image: "images/ic_user.png",
        body: _dummyScaffold(
          title: "User",
        ),
      ),
      _BottomMenuModel(
        image: "images/ic_message.png",
        body: _dummyScaffold(
          title: "Message",
        ),
      ),
      _BottomMenuModel(
        image: "images/ic_history.png",
        body: _dummyScaffold(
          title: "History",
        ),
      ),
    ];
  }

  Widget _dummyScaffold({
    required String title,
  }) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
        ),
      ),
    );
  }
}

class _BottomMenuModel {
  String image;
  Widget body;
  _BottomMenuModel({
    required this.image,
    required this.body,
  });
}
