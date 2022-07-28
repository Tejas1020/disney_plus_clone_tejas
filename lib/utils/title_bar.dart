import 'package:flutter/material.dart';

class titles_bar extends StatelessWidget {
  final String title;
  const titles_bar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8 , left: 8 , top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.left,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white54,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
