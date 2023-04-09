import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class SingleUser extends StatelessWidget {
  final String name;
  final String comapany;
  final String image;
  final Color? color;
  const SingleUser({
    Key? key,
    this.color,
    required this.name,
    required this.comapany,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: GlobalVariables.cardColor,
              ),
              height: 200,
              width: 250,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          ],
        ),
        Text(
          name,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: GlobalVariables.selectedNavBarColor),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          comapany,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}





// Padding(
//           padding: const EdgeInsets.only(right: 8.0),
//           child: Text(
//             name,
//             style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w300,
//                 color: GlobalVariables.selectedNavBarColor),
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: Text(
//               comapany,
//               style: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w200,
//                   color: Colors.black),
//               maxLines: 4,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ),