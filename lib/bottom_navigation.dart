import 'package:app_test/features/artists/artists_page.dart';
import 'package:app_test/features/home/home_view.dart';
import 'package:app_test/features/profile/profile_page.dart';
import 'package:app_test/features/programs/programs_page.dart';
import 'package:app_test/features/tickets/tickets_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationMenuState createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ArtistsPage(),
    const ProgramsPage(),
    const TicketsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          showUnselectedLabels: true,
          iconSize: 25,
          selectedFontSize: 15,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_2),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.microphone),
              label: 'Artists',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.calendar_2),
              label: 'Programs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.ticket),
              label: 'Tickets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}