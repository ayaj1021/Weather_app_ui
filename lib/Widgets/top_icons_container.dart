import 'package:flutter/material.dart';

class TopIconsContainer extends StatelessWidget {
  final IconData iconData;
  final Color? containerColor;
  final Color? iconColor;
  const TopIconsContainer({
    Key? key,
    required this.iconData,
    this.containerColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerColor,
          border: Border.all(color: Colors.grey.shade400)),
      child: Icon(
        iconData,
        color: iconColor,
      ),
    );
  }
}
