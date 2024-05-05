import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Kopianan 🫵",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Explore the world",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('images/anan-image.jpg'),
            backgroundColor: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
