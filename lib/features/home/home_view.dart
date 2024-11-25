import 'package:app_test/features/home/widget/notifications_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isTopVisible = true; // Controla la visibilidad del tope de la lista

  // Lista de imágenes y títulos para cada elemento
  final List<Map<String, String>> items = [
    {
      "image": "assets/image1.jpg",
      "title": "Latest News"
    },
    {
      "image": "assets/image2.jpg",
      "title": "Tickets"
    },
    {
      "image": "assets/image3.jpg",
      "title": "Festival Map"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          // Verifica si el scroll está en la parte superior
          if (scrollInfo.metrics.pixels <= 50 && !isTopVisible) {
            setState(() {
              isTopVisible = true; // Mostrar el AppBar original
            });
          } else if (scrollInfo.metrics.pixels > 50 && isTopVisible) {
            setState(() {
              isTopVisible = false; // Mostrar el AppBar alternativo
            });
          }
          return true;
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: isTopVisible 
                  ? const Text('') 
                  : const Text(
                    'zyte',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
              pinned: true,
              expandedHeight: 300, // Altura máxima del AppBar cuando está expandido
              backgroundColor: isTopVisible ? Colors.transparent : const Color.fromRGBO(5, 21, 50, 1.0), // Cambia el color según la visibilidad
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Image.asset(
                      "assets/login_background.jpeg", 
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    const Center(
                      child: Text(
                          "zyte",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                    ),
                  ]
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 16)
                    ], 
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    // Acción para el botón
                  },
                ),
              ],
              leading: IconButton(
                onPressed: (){
                  Get.to( () => NotificationsView());
                },
                icon: const Icon(Icons.notifications_none_rounded,
                shadows: [
                    Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 16)
                  ], 
                color: Colors.white,
                size: 30,
              ),) 
            ),
            SliverToBoxAdapter(
              child: Container(
                  height: 100,
                  width: double.infinity,
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromRGBO(5, 21, 50, 1.0),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "TEST APP 2024",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "45",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                "DAGER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "28",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                "TIMER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "07",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                "MIN.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "55",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                "SEK.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(items[index]["image"]!), // Imagen de fondo
                        fit: BoxFit.cover, // Ajustar la imagen al contenedor
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Bordes redondeados
                    ),
                    child: Center(
                      child: Text(
                        items[index]["title"]!, // Título diferente para cada contenedor
                        style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
                childCount: items.length, // Número de elementos en la lista
              ),
            ),
            
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.grey[100],
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8),
                    child: const Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My schedule', 
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                "Today you have a new event scheduled for 2 PM.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ]
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Colors.black87,
                            child:
                              Icon(Iconsax.calendar, color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.transparent,
                    margin: const EdgeInsets.all(8.0),
                    child:
                      const Row(
                        mainAxisAlignment:
                          MainAxisAlignment.center,
                        children:[
                          Icon(Icons.facebook, size:
                            40,),
                          SizedBox(width:
                            16,),
                          Icon(Iconsax.instagram5, size:
                            40,)
                        ],
                      )
                  )
                ],
              )
            )
          ],
        )
      )
    );
  }
}