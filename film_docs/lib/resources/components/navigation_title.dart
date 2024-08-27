import 'package:flutter/material.dart';

import '../design_system.dart';

class NavigationTitleWidget extends StatelessWidget {
  final String title;
  final Widget view;
  final Color iconColor;

  const NavigationTitleWidget({super.key, required this.title, required this.view, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => view,
            settings: const RouteSettings(name: 'second')
          ),
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
            child: Icon(Icons.folder, color: iconColor),
          ),
          Text(title, style: subtitle1),
        ],
      ),
    );
  }
}

