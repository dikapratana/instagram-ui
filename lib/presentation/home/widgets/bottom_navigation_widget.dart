import 'package:flutter/material.dart';

class BottomNavigationsWidget extends StatefulWidget {
  const BottomNavigationsWidget({
    super.key,
  });

  @override
  State<BottomNavigationsWidget> createState() =>
      _BottomNavigationsWidgetState();
}

class _BottomNavigationsWidgetState extends State<BottomNavigationsWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              activeIcon: ImageIcon(AssetImage("assets/icons/home_active.png")),
              icon: ImageIcon(AssetImage("assets/icons/home.png")),
              label: ""),
          const BottomNavigationBarItem(
            activeIcon: ImageIcon(AssetImage("assets/icons/search_active.png")),
            icon: ImageIcon(AssetImage("assets/icons/search.png")),
            label: "",
          ),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/add_pict.png")),
              label: ""),
          const BottomNavigationBarItem(
              activeIcon:
                  ImageIcon(AssetImage("assets/icons/favorite_active.png")),
              icon: ImageIcon(AssetImage("assets/icons/favorite.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(0),
                height: 32,
                width: 32,
                child: Image.asset("assets/images/user1.png"),
              ),
              label: ""),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF262626),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        });
  }
}
