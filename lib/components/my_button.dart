import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class Mybutton extends StatelessWidget {

  final Function()? onTap;
  const Mybutton({super.key, required this.onTap,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
        
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
            ),
          )),
    );
  }
}
