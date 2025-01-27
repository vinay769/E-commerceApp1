// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CatogoriesList extends StatelessWidget {
  const CatogoriesList({
    super.key,
    this.color = const Color.fromARGB(255, 17, 184, 196),
    required this.imageUrl,
    required this.text,
    required this.onPressed,
  });

  final Color? color;
  final String imageUrl;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 70,
                  margin: const EdgeInsets.all(5),
                  width: 70,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          //assets/images/catogories_image/dress.png
                          fit: BoxFit.contain,
                          scale: 3,
                          image: AssetImage(imageUrl))),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                )
              ],
            );
          }),
    );
  }
}
