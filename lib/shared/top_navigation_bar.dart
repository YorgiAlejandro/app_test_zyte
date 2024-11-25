import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? leftActions;
  final List<Widget>? rightActions;
  final String title;
  final Color? backgroundColor;

  const TopNavigationBar({
    super.key,
    this.leftActions,
    this.rightActions,
    required this.title,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? const Color.fromRGBO(5, 21, 50, 1.0),
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Left actions
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: leftActions ?? [],
              ),
            ),
            // title
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            // Right actions
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: rightActions ?? [],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0); // Appbar height
}







