// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    this.height = 150,
    this.onTap,
    this.borderRadius,
    required this.imageUrl,
    this.fit,
    required this.isNetworkImage,
    this.width = double.maxFinite,
    this.border,
  });

  final double? width, height;
  final VoidCallback? onTap;
  final int? borderRadius;
  final String imageUrl;
  final BoxFit? fit;
  final bool isNetworkImage;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: border,
            // color: const Color.fromARGB(255, 250, 243, 243),
            borderRadius: BorderRadius.circular(20)),
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
