import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
            child: RoundedImage(
          colour: Colors.blue,
          images: 'assets/images/Screenshot from 2023-07-29 06-37-26.png',
        )),
        RoundedImage(
          left: 15,
          colour: Colors.green,
          images: 'assets/images/img.png',
        ),
        RoundedImage(
          left: 30,
          colour: Colors.red,
          images: 'assets/images/Screenshot from 2023-07-29 06-37-26.png',
        ),
        RoundedImage(
          left: 45,
          colour: Colors.yellow,
          images: 'assets/images/img.png',
        ),
      ],
    );
  }
}

class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key, required this.colour, required this.images, this.left});
  final Color colour;
  final String images;
  final double? left;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(images),
          backgroundColor: colour,
        ),
      ),
    );
  }
}
