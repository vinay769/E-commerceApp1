import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/provider/detail_page_provider.dart';

import 'package:ecommerce_app/utils/constants/image_string.dart';
import 'package:ecommerce_app/views/details_page.dart';

import 'package:ecommerce_app/widgets/custom_button.dart';

import 'package:ecommerce_app/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/product_list_model.dart';
import '../widgets/catogories_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
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
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: [
                  ImageSlider(
                    imageUrl: ImageString.banner1,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 5),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner2,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 5),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner3,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 5),
                  ),
                  ImageSlider(
                    imageUrl: ImageString.banner4,
                    isNetworkImage: false,
                    fit: BoxFit.fill,
                    border: Border.all(
                        color: const Color.fromARGB(255, 17, 184, 196),
                        width: 5),
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
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
              const Text("Catogories",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25)),
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
              const Divider(),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: productList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 370),
                  itemBuilder: (context, index) {
                    return Consumer<DetailPageProvider>(
                      builder: (BuildContext context, DetailPageProvider value,
                          Widget? child) {
                        return GestureDetector(
                          onTap: () {
                            int cindex = index;
                            value.setCindex(cindex);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                  cindex: cindex,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 17, 184, 196),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        backgroundBlendMode: BlendMode.clear,
                                        color: const Color.fromARGB(
                                            255, 8, 158, 168),
                                        boxShadow: [
                                          BoxShadow(color: Colors.blue.shade900)
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "${productList.elementAt(index)["imageUrl"]}"))),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        successMessage1(context);
                                      });
                                    },
                                    icon: const Icon(Icons.favorite),
                                    color: Colors.red,
                                  ),
                                ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${productList.elementAt(index)["name"]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                    "\$${productList.elementAt(index)["price"]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20)),
                                const SizedBox(
                                  height: 3,
                                ),
                                CustomButton(
                                  text: "Cart",
                                  onPressed: () {},
                                  icon: Icons.add_box_outlined,
                                  backgroundColor: Colors.blueAccent.shade700,
                                  textColor: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> successMessage1(
    BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        padding: const EdgeInsets.all(8),
        height: 70,
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Success",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  "Successfully Added to Favorite WishList",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 1,
    ),
  );
}



/*
 GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: productList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 17, 184, 196),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Image.asset(ImageString.bag),
                            Text(index.toString()),
                          ],
                        ),
                      ),
                    );
                  }),

 */
