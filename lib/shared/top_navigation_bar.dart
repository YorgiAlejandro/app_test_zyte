import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? leftActions; // Botones a la izquierda
  final List<Widget>? rightActions; // Botones a la derecha
  final String title; // Título del AppBar
  final Color? backgroundColor; // Color de fondo del AppBar

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
            // Acciones a la izquierda
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: leftActions ?? [],
              ),
            ),
            // Título en el centro
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            // Acciones a la derecha
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
  Size get preferredSize => const Size.fromHeight(100.0); // Altura estándar de AppBar
}







