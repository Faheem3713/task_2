import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.colour,
      required this.arcColor});
  final IconData icon;
  final String text;
  final Color colour;
  final Color arcColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            child: Container(
                height: 30,
                width: 15,
                decoration: BoxDecoration(
                  color: arcColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
