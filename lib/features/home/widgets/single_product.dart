import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String name;
  final String description;
  final Color? color;
  const SingleProduct({
    Key? key,
    this.color,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: GlobalVariables.cardColor,
      ),
      height: 200,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/Cipherschools_icon.png',
                    fit: BoxFit.fitHeight,
                    height: 60,
                    width: 60,
                  ),
                ),
                Stack(
                  children: [
                    const RotatedBox(
                      quarterTurns: 125,
                      child: Icon(
                        Icons.bookmark,
                        size: 90,
                        color: GlobalVariables.selectedNavBarColor,
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 40,
                      child: Text(
                        "Free",
                        style: TextStyle(
                          color: color == null ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  description,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
      // Other button style properties can be added here
    );
  }
}
