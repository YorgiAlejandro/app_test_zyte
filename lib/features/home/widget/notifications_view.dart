import 'package:flutter/material.dart';
import 'package:app_test/shared/top_navigation_bar.dart';

class NotificationsView extends StatelessWidget {
  NotificationsView({super.key});

  // Lista de notificaciones como ejemplo
  final List<Map<String, String>> notifications = [
    {
      "title": "New Feature Released",
      "description": "Check out the new feature in the app!",
      "image": "assets/image1.jpg",
    },
    {
      "title": "Maintenance Notice",
      "description": "The app will be down for maintenance at midnight.",
      "image": "assets/image2.jpg",
    },
    {
      "title": "Weekly Summary",
      "description": "Here is your weekly summary of activities.",
      "image": "assets/image3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavigationBar(
        title: "Latest News",
        backgroundColor: const Color.fromRGBO(5, 21, 50, 1.0),
        leftActions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification["title"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          notification["description"]!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8), // Espacio entre el texto y la imagen
                  Image.asset(
                    notification["image"]!, // Imagen a la derecha
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}