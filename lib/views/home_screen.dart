import 'package:carousel_slider/carousel_slider.dart';

import 'package:ecommerce_app/utils/constants/image_string.dart';

import 'package:ecommerce_app/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/catogories_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E-Commerce App",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search",
          )
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 17, 184, 196),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 184, 196),
              ),
              child: Text(' ☀️ Good Morning',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ),
            ListTile(
              title: const Text('❤️ Favorite',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('📚 About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  ImageSlider(
                    imageUrl: ImageString.banner1,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 1),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner2,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 1),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner3,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 1),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner4,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 1),
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const Divider(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CatogoriesList(
                      imageUrl: ImageString.bag,
                      text: "Bag",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.dress,
                      text: "Dress",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.watch,
                      text: "Watchs",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.furniture,
                      text: "Furniture",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.sneakers,
                      text: "Sneakers",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.laptop,
                      text: "Laptop",
                      onPressed: () {},
                    ),
                    CatogoriesList(
                      imageUrl: ImageString.fruits,
                      text: "Fruits",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
