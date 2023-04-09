import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: GlobalVariables.selectedNavBarColor,
        ),
        height: 50,
        width: 270,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: color == null ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: GlobalVariables.backgroundColor,
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        // Other button style properties can be added here
      ),
    );
  }
}
