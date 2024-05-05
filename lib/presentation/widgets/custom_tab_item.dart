import 'package:flutter/material.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({super.key, required this.label, this.selected = false});
  final String label;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: selected ? const Color(0xff2F2F2F) : const Color(0xffFBFBFB),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        label,
        style: TextStyle(
            color: selected ? Colors.white : const Color(0xffC5C5C5),
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ),
    );
  }
}
