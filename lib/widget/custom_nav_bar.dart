import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home.dart';

import '../screens/map_screen.dart';

class CustomNavBar extends StatelessWidget {
  final int index;

  const CustomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarIcon(
              icon: const Icon(Icons.home_outlined),
              text: 'Home',
              isSelected: index == 0,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
            ),
            _NavBarIcon(
              icon: const Icon(Icons.map_outlined),
              text: 'Map',
              isSelected: index == 1,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function()? onTap;
  final bool isSelected;

  const _NavBarIcon({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Colors.amber : Colors.grey;
    return InkWell(
      onTap: onTap,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
        icon,
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: color,
          ),
        )
      ]),
    );
  }
}
