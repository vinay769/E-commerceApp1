// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/model/product_list_model.dart';
import 'package:ecommerce_app/provider/detail_page_provider.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  final int cindex;
  const DetailsPage({
    super.key,
    required this.cindex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          "Product Detail",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 20, 185, 197),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            //    color: Colors.blue,
            height: 300,
            padding: const EdgeInsets.all(16),
            width: double.maxFinite,
            child: Consumer<DetailPageProvider>(
              builder: (BuildContext context, DetailPageProvider value,
                  Widget? child) {
                return Container(
                  height: 300,
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue),
                    color: Colors.greenAccent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          "${productList.elementAt(value.cindex!)["imageUrl"]}"),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<DetailPageProvider>(
            builder: (BuildContext context, DetailPageProvider value,
                Widget? child) {
              return Container(
                //  color: Colors.amber,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Product Name : ${productList.elementAt(value.cindex!)["name"]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Product Price : ${productList.elementAt(value.cindex!)["price"]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Product Description : ${productList.elementAt(value.cindex!)["description"]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20)),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomButton(
                  backgroundColor: Colors.lightBlue.shade300,
                  minimumSize: const Size(double.maxFinite, 50),
                  text: "Buy Now",
                  onPressed: () {},
                  icon: Icons.shopping_bag),
            ),
          )
        ],
      ),
    );
  }
}





// Container(
//                   height: 300,
//                   width: double.maxFinite,
//                   margin: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.greenAccent,
//                     image: DecorationImage(
//                       fit: BoxFit.fill,
//                       image: AssetImage(
//                           "${productList.elementAt(index)["imageUrl"]}"),
//                     ),
//                   ),
//                 );