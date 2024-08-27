import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double screenH;
  final String title;
  final String subTitle;
  final Color iconColor;
  final String imgName;


  const CustomAppBar({super.key, required this.screenH, required this.title, required this.subTitle, required this.iconColor, required this.imgName});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(screenH * 0.23);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mainBlack,
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/$imgName.png'),
              fit: BoxFit.cover,
            ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 23,
                    child: Icon(
                      Icons.folder,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(title, style: headline1),
                  Text(subTitle, style: subtitle1.copyWith(color: Colors.white)),

                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:  Divider(
              color: iconColor,
              height: 1,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
          ),
        ],
      ),
    );
  }
}
