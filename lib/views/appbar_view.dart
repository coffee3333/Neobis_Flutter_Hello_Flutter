import 'package:flutter/material.dart';
import 'package:todo_project/assets/consts/color_consts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConsts().clrLvl2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      title: Text(
        "To Do List".toUpperCase(),
        style: const TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
