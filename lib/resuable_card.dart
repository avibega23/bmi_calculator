import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.color, this.carChild, super.key});
  final Color color;
  final Widget? carChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      margin: const EdgeInsets.all(15),
      child: carChild,
    );
  }
}
